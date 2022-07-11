

library(tidyverse)

data.frame(
  recurso = c("Turismo Naturaleza",
              "Anuario 2015",
              "Turismo Cultura"),
  src = c("img/perfil_naturaleza.png",
          "img/aet_2015.png",
          "img/perfil_cultura.png"),
  url = c("https://tableros.yvera.tur.ar/recursos/biblioteca/perfil_naturaleza.pdf",
          "https://www.yvera.tur.ar/sinta/informe/documentos/descarga/59f0080a467fb.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/perfilcultura.pdf"),
  description  = c("Información estadística relacionada con las
prácticas turísticas en entornos naturales",
                   "Anuario de Estadísticas de Turismo 2015 (último publicado)",
                   "Información estadística relacionada con las
prácticas turísticas en entornos culturales"),
  tags = c("Reporte", "Anuario", "Reporte"),
  Todos = c(1, 1, 1),
  Anuario = c(0, 1, 0),
  Informe = c(1, 0, 1),
  Documento = c(0, 0, 0)) %>%
  as_tibble() %>%
  mutate(orden = c(1)) %>%   # OREDNO POR TEMA Y NO POR TIPO DE RECURSO
  arrange(orden)  %>%
  write_csv(here::here("content", "recursos.csv"))
