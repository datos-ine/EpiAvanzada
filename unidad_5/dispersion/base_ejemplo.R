# Carga paquetes
library(tidyverse)

# Genera datos ejemplo
dengue <- read_csv("unidad_5/dispersion/dengue_pba_2024.csv") |> 
  filter(
  departamento %in% 
    c("LA COSTA", "PINAMAR", "VILLA GESSELL", "MAR CHIQUITA", "GENERAL PUEYRREDON",
      "GENERAL ALVARADO", "LOBERIA", "NECOCHEA", "SAN CAYETANO", "TRES ARROYOS",
      "CORONEL DORREGO", "CORONEL ROSALES", "BAHIA BLANCA") & 
    semana_epi<= 20) |> 
  
  complete(provincia, departamento,periodo, semana_epi, grupo_edad_cat) |> 
  mutate(casos = replace_na(casos, 0))

# Guarda base
rio::export(dengue, file = "unidad_5/dispersion/dengue_costa_2024.csv")
