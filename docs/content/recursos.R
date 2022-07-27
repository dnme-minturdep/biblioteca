

  library(tidyverse)

  data.frame(
    fecha = c("05/2020", "10/2019", "04/2018", # EOH  TI  ETI
              "02/2022", "02/2022", # CUENTA SATELITE x2
              "04/2022", # NATURALEZA - Perfil Estadísticas
              "01/2016", # ANUARIO 2015 - FEcha para ANUARIOS del año previo
              "04/2022", # CULTURA - Perfil Estadísticas
              "01/2015", # Fecha para ANUARIOS del año previo
              "01/2014", # Fecha para ANUARIOS del año previo
              "01/2013", # Fecha para ANUARIOS del año previo
              "01/2012", # Fecha para ANUARIOS del año previo
              "01/2011", # Fecha para ANUARIOS del año previo
              "01/2010", # Fecha para ANUARIOS del año previo
              "01/2009", # Fecha para ANUARIOS del año previo
              "01/2008", # Fecha para ANUARIOS del año previo
              "01/2007", # DOCUMENTOS TECNICOS
              "12/2021", "12/2021", "12/2021", "12/2021", "12/2021", "12/2021"
              ),
    recurso = c("EOH", # MAYO 2020  -2
                "Turismo Internacional", # OCTUBRE 2019 9.75
                "ETI", # ABRIL 2018  9.5
                "Cuenta Satelite - 2004 y 2016-2019", #FEBRERO 2022 (-1)
                "Cuenta Satelite - Metodología",  # 0
                "Turismo Naturaleza", # 3
                "Anuario 2015", # 2016 # 9
                "Turismo Cultura", # 1
                "Anuario 2014", # 10
                "Anuario 2013",
                "Anuario 2012",
                "Anuario 2011",
                "Anuario 2010",
                "Anuario 2009",
                "Anuario 2008",
                "Anuario 2007",
                "Anuario 2006", #18
                "DT1", # 2021 (8)
                "DT2", # 7
                "DT3", # 6
                "DT4", # 6
                "DT5", # 4
                "DT6"), # 2
    src = c("img/eoh_metodologico.png",
            "img/turismo_interacional.png",
            "img/eti_indec.png",
            "img/cuenta_sat.png",
            "img/cuenta_sat_metodo.png",
            "img/naturaleza.png",
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
            "img/aet_2006.png",
            "img/armo01.png",
            "img/armo02.png",
            "img/armo03.png",
            "img/armo04.png",
            "img/armo05.png",
            "img/armo06.png"),
    url = c("https://www.yvera.tur.ar/sinta/informe/documentos/descarga/60c8a5294550f707538011.pdf",
            "https://www.yvera.tur.ar/sinta/informe/documentos/descarga/5dc0460bcfa3e053142696.pdf",
            "https://www.yvera.tur.ar/sinta/informe/documentos/descarga/5d5c00efe6866641938689.pdf","https://www.yvera.tur.ar/sinta/informe/documentos/descarga/61fad7e475abe809073943.pdf",
            "https://www.yvera.tur.ar/sinta/informe/documentos/descarga/61fad2ebbb2db408458887.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/perfil_naturaleza.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2015.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/perfil_cultura.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2014.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2013.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2012.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2011.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2010.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2009.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2008.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2007.pdf",
            "https://tableros.yvera.tur.ar/recursos/biblioteca/anuario-2006.pdf",
            "https://dnme-minturdep.github.io/DT1_medicion_turismo/",
            "https://dnme-minturdep.github.io/DT2_encuestas/",
            "https://dnme-minturdep.github.io/DT3_registros_adminsitrativos/",
            "https://dnme-minturdep.github.io/DT4_perfiles/",
            "https://dnme-minturdep.github.io/DT5_actividad_empleo/",
            "https://dnme-minturdep.github.io/DT6_ciencia_de_datos_turismo/"),
    description  = c("Enucesta de Ocupación Hotelera - EOH - Aspectos Metodológicos (mayo de 2020)",
                     "Estimación del Turismo Internacional de Argentina (octubre de 2019)",
                     "Encuesta de Turismo Internacional - ETI (abril de 2018)",
                     "Cuenta satélite de turismo de la Argentina. Medición de la contribución del sector turístico a la economía y sus interrelaciones con el resto de las actividades.  (febrero de 2022)",
                     "Cuenta satélite de turismo de la Argentina. Metodología de estimación. Año base 2004 y serie 2016 - 2019 a precios constantes (febrero de 2022)",
                     "Información estadística (a partir de la Encuesta de Turismo Internacional -ETI- y la Encuesta de Viaje y Turismo de los Hogares -EVyTH) relacionada con las prácticas turísticas en entornos naturales",
                     "Anuario de Estadísticas de Turismo 2015",
                     "Información estadística (a partir de la Encuesta de Turismo Internacional -ETI- y la Encuesta de Viaje y Turismo de los Hogares -EVyTH) relacionada con las prácticas turísticas en entornos culturales",
                     "Anuario de Estadísticas de Turismo 2014",
                     "Anuario de Estadísticas de Turismo 2013",
                     "Anuario de Estadísticas de Turismo 2012",
                     "Anuario de Estadísticas de Turismo 2011",
                     "Anuario de Estadísticas de Turismo 2010",
                     "Anuario de Estadísticas de Turismo 2009",
                     "Anuario de Estadísticas de Turismo 2008",
                     "Anuario de Estadísticas de Turismo 2007",
                     "Anuario de Estadísticas de Turismo 2006",
                     "Documento Técnico #1: Conceptos y Elementos Básicos para la Medición Provincial de los Turistas",
                     "Documento Técnico #2: Propuestas metodológicas para las encuestas de ocupación en alojamientos turísticos",
                     "Documento Técnico #3: Descripción, Análisis y Utilización de los Registros Administrativos para la medición del Turismo",
                     "Documento Técnico #4: Propuestas Metodológicas para las Encuestas de Perfil del Visitante",
                     "Documento Técnico #5: Medición de la contribución económica del turismo",
                     "Documento Técnico #6: Herramientas Computacionales para el Análisis de Datos"),
    tags = c("Metodología",
             "Metodología",
             "Metodología",
             "Metodología",
             "Metodología",
             "Documentos de Trabajo; Estadísticas",
             "Estadísticas",
             "Documentos de Trabajo; Estadísticas",
             "Estadísticas","Estadísticas","Estadísticas",
             "Estadísticas","Estadísticas","Estadísticas",
             "Estadísticas","Estadísticas","Estadísticas",
             "Metodología; Armonización", "Metodología; Armonización", "Metodología; Armonización",
             "Metodología; Armonización", "Metodología; Armonización", "Metodología; Armonización")
      ) %>%
    as_tibble() %>%
    mutate(fecha = lubridate::my(fecha)) %>%
    arrange(desc(fecha), desc(recurso)) %>%
    write_csv(here::here("content", "recursos.csv"))
