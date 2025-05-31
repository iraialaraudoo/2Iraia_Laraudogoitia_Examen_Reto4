#EXAMEN DATA SCIENCE RETO04 IRAIA

#-----    DATA DISCOVERING
datos<- read.csv("C:/MONDRAGON BIG DATA 1/DATA SCIENCE/RETO 04/water-quality-data.csv")

datos_numericos<- datos[,c(9,10,11)]
summary(datos_numericos)
sd(datos$Value, na.rm=T)
sd(datos$MDL, na.rm=T)
sd(datos$RDL, na.rm=T)
