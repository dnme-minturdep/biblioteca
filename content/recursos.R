

library(tidyverse)

data.frame(
  recurso = c("Turismo Naturaleza",
              "Anuario 2015"),
  src = c("img/perfil_naturaleza.png",
          "img/aet_2015.png"),
  url = c("content/files/perfil_naturaleza.pdf",
          "https://www.yvera.tur.ar/sinta/informe/documentos/descarga/59f0080a467fb.pdf"),
  description  = c("El reporte brinda información estadística relacionada con las
prácticas turísticas en entornos naturales",
                   "Anuario de Estadísticas de Turismo 2015 (último publicado)"),
  tags = c("Reporte", "Anuario"),
  Todos = c(1, 1),
  Anuario = c(0, 1),
  Informe = c(1, 0),
  Documento = c(0, 0)) %>%
  as_tibble() %>%
  mutate(orden = c(1)) %>%   # OREDNO POR TEMA Y NO POR TIPO DE RECURSO
  arrange(orden)  %>%
  write_csv(here::here("content", "recursos.csv"))
