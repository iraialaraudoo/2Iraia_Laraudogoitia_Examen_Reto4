#EXAMEN DATA SCIENCE RETO04 

library(naniar)
library(VIM)

#-----  DATA CLEANING

#Analizar los missings por variable y por registro
#Variable
miss_var_summary(datos)

#Registro
miss_case_summary(datos)

muestra_datos <- datos[sample(nrow(datos), size = 0.01 * nrow(datos)), ]
vis_miss(muestra_datos)

#Imputar
datos_imputados_muestra<- kNN(muestra_datos, variable=c("RDL","MDL","Grab.ID","Value"), dist_var = c("Area", "Site.Type"), k=5)
sum(is.na(datos_imputados_muestra))
