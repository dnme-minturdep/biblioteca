

agregar_recurso <- function(){

library(tidyverse)

imgs_path <- list.files(here::here("img/portadas"),
                        full.names = T)

walk(imgs_path , \(x) {
  img <- magick::image_read(x)
  magick::image_scale(img, geometry = "348x207!")
  magick::image_write(img, x, format = "png")
})

googlesheets4::gs4_deauth()

googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1wsgMKiar89XS7XfSMfAistBUYSERVXuyvwxsKzIc1iM/edit#gid=121305671") %>%
  arrange(desc(fecha), desc(recurso)) %>%
  drop_na() %>%
  write_csv(here::here("content", "recursos.csv"))



rmarkdown::render(input = "index.Rmd", output_dir = "docs", output_yaml = "_site.yml")

}



abrir_biblioteca <- function(){

  browseURL("https://docs.google.com/spreadsheets/d/1wsgMKiar89XS7XfSMfAistBUYSERVXuyvwxsKzIc1iM/edit#gid=121305671")

}


nueva_publicacion_coynutura <- function(publicacion = NULL){
  library(tidyverse)

 #  publicacion <- "imet" #puede ser imet o coyuntura en diseño, pasando parametro de la función. esta linea es para test

  assertthat::assert_that(publicacion %in% c("imet", "coyuntura"), msg = "El param publicación debe ser 'imet' o 'coyuntura'")


  #### TEXTO PARA AGREGAR A DESCRIPTION CONDICIONAL A PARAMETRO DE LA FUNCION


  desc_imet <- glue::glue("Evolución de los principales indicadores de la actividad turística ({toupper(format(Sys.Date(),
                          format='%B %Y'))})")



  desc_panorama <- glue::glue("Panorama económico del Turismo en Argentina ({toupper(format(Sys.Date(),
                          format='%B %Y'))})")


  ### AGREGO NUEVA PUBLICACION EN FUNCION DEL PARAPETRO PUBLICACION DE LA FUNCION

  read_csv("content/recursos_coyuntura.csv") %>%  # LEVANTA DATOS CARGADOS
    add_row(recurso =  glue::glue("{publicacion}_{Sys.Date()}"), # NUEVA FILA CON TODAS LAS VARS
            src =  glue::glue("img/{publicacion}.png"),
            url =  glue::glue("https://tableros.yvera.tur.ar/recursos/biblioteca/{publicacion}_{Sys.Date()}.pdf"),
            description = ifelse(publicacion == "imet", yes = desc_imet, no = desc_panorama),
            tags = ifelse(publicacion == "imet", yes = "Estadísticas Turísticas", no = "Economía del Turismo"),
            fecha = Sys.Date(), .before = 1) %>%
    write_csv("content/recursos_coyuntura.csv") # GUARDO RECURSO ACTUALIZADO CON NUEVO REGISTRO


  rmarkdown::render(input = "coyuntura.Rmd", output_dir = "docs", output_yaml = "_site.yml")


}

