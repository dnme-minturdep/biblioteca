

agregar_recurso <- function(){

  library(tidyverse)

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
