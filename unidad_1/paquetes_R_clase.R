### Paquetes esenciales para trabajar a lo largo del curso:
### Epidemiología Nivel Avanzado
### Instituto Nacional de Epidemiología (INE), Mar del Plata, Buenos Aires, Argentina

## Gestor de descarga paquetes (permite instalar varios paquetes y sus dependencias a la vez)
install.packages("pacman")


# Instalar y cargar paquetes requeridos -----------------------------------
pacman::p_load(
  ### Manejo y limpieza de datos
  tidyverse,
  janitor,
  
  ### Análisis exploratorio de datos
  skimr,
  summarytools,
  dlookr,
  gtsummary,
  
  ## Test de normalidad
  TeachingDemos,
  DataExplorer,
  nortest,
  ggpubr,
  moments,
  car,
  
  ## Cálculo tamaño de muestra
  samplingbook,
  pwr,
  survey, # Muestras complejas
  
  ## Gráficos de correlación
  ggstatsplot,
  
  ## Comparación de modelos y test de supuestos
  parameters,
  performance,
  lmtest,
  gvlma,
  
  ## Tests para modelos de regresión logística
  DescTools,
  vcdExtra,
  pROC,
  see,
  
  ## Sobredispersión modelos Poisson
  epiDisplay,
  
  ## Análisis de supervivencia
  survival,
  survminer, # gráficos de supervivencia
  
  ## Herramientas adicionales
  cowplot, # une gráficos de ggplot
  flextable # exporta tablas a documentos de Office
)
