#EXAMEN DATA SCIENCE RETO04 IRAIA

library(dplyr)

#-----    DATA DISCOVERING
datos<- read.csv("C:/MONDRAGON BIG DATA 1/DATA SCIENCE/RETO 04/water-quality-data.csv")

datos_numericos<- datos[,c(9,10,11)]
summary(datos_numericos)
sd(datos$Value, na.rm=T)
sd(datos$MDL, na.rm=T)
sd(datos$RDL, na.rm=T)

#Valor medio de la calidad del agua por Area
datos_calidad_agua<- datos%>% group_by(Area) %>% summarise(Valor_Medio= mean(Value,na.rm=T)) %>% arrange(Area)
datos_calidad_agua[c(5,20,33),]
