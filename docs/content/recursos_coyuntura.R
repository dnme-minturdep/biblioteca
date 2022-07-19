

library(tidyverse)

data.frame(
  recurso = c("imet_ene2022",
              "imet_ene2022",
              "imet_ene2022",
              "imet_ene2022",
              "imet_ene2022",
              "imet_ene2022"),
  src = c("img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png"),
  url = c("https://tableros.yvera.tur.ar/recursos/biblioteca/imet_enero.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_febrero.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_marzo.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_abril.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_mayo.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_junio.pdf"),
  description  = c("Evolución de los principales indicadoresde la actividad turística (ENERO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (FEBRERO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (MARZO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (ABRIL 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (MAYO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (JUNIO 2022)"),
  tags = c("Estadísticas Turísticas", "Estadísticas Turísticas", "Estadísticas Turísticas", "Estadísticas Turísticas",
           "Estadísticas Turísticas", "Estadísticas Turísticas"),
  orden = c(1, 2 ,3, 4, 5 , 6 )
) %>%
  as_tibble() %>%
  arrange(desc(orden)) %>%
  write_csv(here::here("content", "recursos_coyuntura.csv"))
