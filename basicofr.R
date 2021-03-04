#########################################
##         OPERADOR MATEMÁTICO         ##
2+5
#########################################
##         COMENTARIO                  ##
# Demo Comment
#########################################
##         IMPRESIÓN POR CONSOLA       ##
print("Hello World!!!")
#########################################
# Asignación de valores a variables
# Más común
x <- 2
x

y = 4
y

# Menos común 
2 -> z
z
######################################################
## ASIGNACIÓN DE UN CONJUNTO DE NÚMEROS A UNA VARIABLE
######################################################
c <-c(1,2,3,4,5)
c1 <- 1:5

#### SE ASIGNA EL MISMO CONJUNTO DE NÚMEROS A C2 Y C3
c2 <- c3 <- 1:4

######################################################
# OPERACIONES CON DOS CONJUNTOS DE NÚMEROS
######################################################
c4 <- c2+c3
c5 <- c2*c3
######################################################
# Case Sensitive
##########################

a <- 5
A <- 10
#####################################################
# LISTANDO LAS VARIABLES CREADAS EN CONSOLA
#####################################################
ls()
#####################################################
# BORRANDO VARIABLES DEL ESPACIO DE TRABAJO
#####################################################
rm(x,A)
remove(a)
# BORRAR TODAS LAS VARIABLES
rm(list=ls())

browseURL("http://cran.r-project.org/web/views/")

# INFORMACIÓN SOBRE ALGÚN COMANDO ? 
? require

# MUESTRA LIBRERIAS DISPONIBLES
library()
search()

data()
library(help="datasets")

# Muestra en help como usar el dataset
? iris

# Muestra información resumida del dataset
str(iris)

# Muestra los datos contenidos en el dataset
iris

data("iris")

######### CREANDO SECUENCIAS ################

x1 <- 1:10

#### USANDO LA FUNCIÓN C()

x2 <- c(2,5,7,4)

# Operador seq(). Creación de una secuencia de números comenzando desde el 5 al 50, con una separación de 5
x3 <- seq(5,50, by = 5)

x4 <- scan() 
x4

##### Leyendo data desde archivos ######

##### Archivos de texto #######
product <- read.table("../Product.txt",header = TRUE, sep ="\t")
product
str(product)
summary(product)

###### Archivos CSV #########
customer <- read.csv("../Customer.csv",header = TRUE)
str(customer)
customer

#### Para ver en una tabla ####

View(customer)

### Fracuencia de una región
# Almacenamos la información de una columna en una variable y

y <- table(customer$Region)

# Mostraremos la frecuencia de cada estado
View(y)

# Haciendo un gráfico de barras
barplot(y)

# Ordenando las barras ascendentemente
barplot(y[order(y)])

# Ordenando las barras descendentemente
barplot(y[order(-y)])

# Creando gráfico de barras horizontales
barplot(y[order(y)],horiz = TRUE)

# Gráfico con un sólo color
barplot(y[order(y)],horiz = TRUE,col = "green")

# Gráfico de varios colores
barplot(y[order(y)],horiz = TRUE,col = c("green", "yellow", "blue", "grey"))

# Si queremos saber qué colores hay disponibles
colors()

# Eliminando los bordes
barplot(y[order(y)],horiz = TRUE,col = c("green", "yellow", "blue", "grey"),border = NA)

# Agregando título
barplot(y[order(y)],horiz = TRUE,col = c("green", "yellow", "blue", "grey"),border = NA,main="Frequency \n of Regions")

# Agregando leyenda a los ejes
barplot(y[order(y)],horiz = TRUE,col = c("green", "yellow", "blue", "grey"),border = NA,main="Frequency \n of Regions",xlab="Frequency", ylab="Regions")

# Almacenando una imagen desde el código
png(filename = "../Freq.png", width = 888, height = 570)
barplot(y[order(y)],horiz = TRUE,col = c("green", "yellow", "blue", "grey"),border = NA,main="Frequency \n of Regions",xlab="Frequency", ylab="Regions")
dev.off()

# Creando Histogramas
hist(customer$Age)
# Se establecen los intervalos
hist(customer$Age,breaks = 5)
# Se mejora la apariencia del histograma
hist(customer$Age,breaks = c(0,40,60,100),freq = TRUE, col="green", main = "Histogram of Age")
