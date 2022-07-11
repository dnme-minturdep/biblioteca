

library(tidyverse)

data.frame(
  recurso = c("Turismo Naturaleza",
              "Anuario 2015",
              "Turismo Cultura",
              "Anuario 2014",
              "Anuario 2013",
              "Anuario 2012",
              "Anuario 2011",
              "Anuario 2010",
              "Anuario 2009",
              "Anuario 2008",
              "Anuario 2007",
              "Anuario 2006"),
  src = c("img/naturaleza.png",
          "img/aet_2015.png",
          "img/cultura.png",
          "img/aet_2014.png",
          "img/aet_2013.png",
          "img/aet_2012.png",
          "img/aet_2011.png",
          "img/aet_2010.png",
          "img/aet_2009.png",
          "img/aet_2008.png",
          "img/aet_2007.png",
          "img/aet_2006.png"),
  url = c("https://tableros.yvera.tur.ar/recursos/biblioteca/perfil_naturaleza.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2015.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/perfilcultura.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2014.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2013.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2012.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2011.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2010.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2009.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2008.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2007.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2006.pdf"),
  description  = c("Información estadística relacionada con las
prácticas turísticas en entornos naturales",
                   "Anuario de Estadísticas de Turismo 2015 (último publicado)",
                   "Información estadística relacionada con las
prácticas turísticas en entornos culturales",
                   "Anuario de Estadísticas de Turismo 2014",
                   "Anuario de Estadísticas de Turismo 2013",
                   "Anuario de Estadísticas de Turismo 2012",
                   "Anuario de Estadísticas de Turismo 2011",
                   "Anuario de Estadísticas de Turismo 2010",
                   "Anuario de Estadísticas de Turismo 2009",
                   "Anuario de Estadísticas de Turismo 2008",
                   "Anuario de Estadísticas de Turismo 2007",
                   "Anuario de Estadísticas de Turismo 2006"),
  tags = c("Reporte", "Anuario", "Reporte", "Anuario","Anuario","Anuario","Anuario","Anuario","Anuario","Anuario","Anuario","Anuario"),
  Todos = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
  Anuario = c(0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
  Informe = c(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  Documento = c(0, 0, 0)) %>%
  as_tibble() %>%
  mutate(orden = c(1, 3, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12)) %>%   # OREDNO POR TEMA Y NO POR TIPO DE RECURSO
  arrange(orden)  %>%
  write_csv(here::here("content", "recursos.csv"))
