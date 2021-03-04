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
