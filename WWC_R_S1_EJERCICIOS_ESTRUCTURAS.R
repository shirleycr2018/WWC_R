#Este script contiene ejercicios de los topics del curso básico de R
#--------------------------------------#
# Estructuras de Datos
#--------------------------------------# 

#------------
# 1.Vectores
#------------
# Ejecute en RStudio las siguientes instrucciones y evalue los resultados

# seq
v1 <- seq(-5, 5, by=.2) 
length(v1)

v2 <- seq(length=51, from=-5, by=.2)

v1_sum2 <- v1 + 2
v1_mul2 <- v1 * 2

mean(v1_sum2)

max(v1_mul2)

which.max(v1_sum2)

# rep
v3 <- rep(v1, times=5)

v4 <- rep(v1, each=5)

# Que diferencia nota entre v3 y v4?

# sum
vector <- (1:1000)

suma <- sum(vector)
#-----------
# 2. Matriz
#-----------
#2.1 creando una matrix
data <- 1:6
#observe data
m0 <- matrix(data)
#observe m1

# Por columnas
m1 <- matrix(data, ncol = 2, byrow = FALSE) # byrow = FALSE por defecto
m2 <- matrix(data, ncol = 2, nrow = 3) # Equivalente
m3 <- matrix(data, nrow = 3) # Equivalente

# Por filas
m4 <- matrix(data, ncol = 2, byrow = TRUE)

# cual es la diferencia entre M4 y las anteriores (m1)

x <- c(2, 7, 3, 6, 1)
y <- c(3, 7, 3, 5, 9)

# Por columnas
m1 <- cbind(x, y)

# Por filas
m2 <- rbind(x, y)
class(m2)


m3 <- matrix(c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, FALSE), ncol = 3 )

m4 <- matrix(c("amarillo", "verde", "celeste", "negro","naranja","cafe","blanco","rojo"), nrow = 4 )

#2.2 dimensiones de una matriz

dim(m3)

dim(m4)

#2.3 dimensiones de una matriz

# Elimine la primera fila de m4
  
 m4[-1,]

 # Ejecute las siguientes instrucciones
 m4[3,]
 m4[3,1]
 m4[3,2]
 

 # Agregar columnas a matriz 
 m4 <- cbind(m4, c("lila", "rosado", "morado","azul"))
 
 # Agregar Filas a matriz 
 
 m4 <- rbind(m4, c("purpura", "gris","salmon"))
 
 nrow(m4)
 ncol(m4)
 
# Elminar fila 
 m4 <- m4[-4,]
# Eliminar columna
 m4 <- m4[,-2]
 
 
 nrow(m4)
 ncol(m4)
 
 
 
#-------------
# 3.DataFrame 
#-------------

# Crear dataframe
 
 animales1 <- data.frame(animal=c("vaca","perro","rana","lagarto","mosca","jilguero"), 
                        clase=c("mamífero","mamífero","anfibio","reptil","insecto","ave"))
 animales1
 

 animales2 <- data.frame(animal=c("atún", "cocodrilo", "gato","rana"), clase=c("pez", "reptil", "mamífero","anfibio"))
 animales2
 
 # Combinar dataframe
 animales3 <- rbind(animales1,animales2)
 animales3
 
 # Ordenar dataframe 
 ordenacion <- order(animales1$animal)
 
 
 animales1 <- animales1[order(animales1$animal),] 
 
#----------
# 4.Factor
#----------

#1. crear factores
 
# creamos  
 sexo <- c("M", "H", "M", "M", "M", "H", "M", "M", "H", "H")
 sexo <- factor(sexo,levels=c("H","M"),labels=c("Hombre","Mujer"))
 sexo 
 
# En este ejemplo creamos un factor para los meses del año
 
 x1 <- c("Dic", "Abr", "Ene", "Mar")
 sort(x1)
 
 
 niveles_meses <- c(
   "Ene", "Feb", "Mar", "Abr", "May", "Jun",
   "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"
 )
 # creamos el factor 
 y1 <- factor(x1, levels = niveles_meses)
 #observe y1
 y1
 # ordene a y1
 sort(y1)
 
 # Por favor note que "Eme" no es un mes válido
 x2 <- c("Dic", "Abr", "Eme", "Mar")
 y2 <- factor(x2, levels = niveles_meses)
 y2
 
 levels(y1)
 
#----------
# 5.Listas
#----------

 xlist <- list(a = "Software Carpentry", b = 1:10, data = head(mtcars))
 xlist[1]
 xlist[[1]]
