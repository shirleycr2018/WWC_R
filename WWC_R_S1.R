#Clase #1
#----------------------------------------#
#Sintaxis de R
#----------------------------------------#
# Operadores Aritmeticos

2 + 3 * 4 # Precedencia de Operadores 

3 ^ 2 # Exponenciación 

exp(1) # Funciones matemáticas básicas

sqrt(10)

pi # Algunas constantes se encuentran predefinidas


#----------------------------------------#
# Operadores Relacionales
#----------------------------------------#
5 < 3 

5 <= 3

5 > 3

5 >= 3

5 == 3

5 != 3
#----------------------------------------#
#Operadores Logicos 
#----------------------------------------#
 5 | 0
 
 5 & 0
 
 isTRUE(0)
 
 isTRUE(5)
 
 isTRUE(FALSE)
 
 !(FALSE | FALSE)

 #----------------------------------------#
 # ESTRUCTURAS DE DATOS 
 #----------------------------------------#
 
 #Vectores
 x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
 
 assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
 
 c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
 
 fruit <- c(5, 10, 1, 20) 
 
 names(fruit) <- c("orange", "banana", "apple", "peach")
 
 lunch <- fruit[c("apple","orange")]
 
 #Creacion de Vectores 
 x <- 1:7
 
 s3 <- seq(-5, 5, by=.2) 
 
 s4 <- seq(length=51, from=-5, by=.2)
 
 s5 <- rep(x, times=5) 
 
 s6 <- rep(x, each=5)
 
 #Matrices
 
 x <- array(1:20, dim=c(4,5)) 
 
 i <- array(c(1:3,3:1), dim=c(3,2))
 
 x[2, 3] # Selección de elementos 
 
 x[1,] # Selección de filas 
 
 x[,1] # Selección de columnas
 
 x[ ,c(1,3)] # Selección de varias columnas
 
 mascara <- x > 4 # Máscara booleana y uso
 
 x[mascara]
 
 nrow (x) 
 
 ncol(x) 
 
 #Factores
 
 tallas <- c('m', 'g', 'S', 'S','m', 'M', "s", "G")
 
 tallas_factor <- factor(tallas,
                         levels = c("g","m","M","s","S"))
 
 tallas_factor <- factor(tallas,
                         levels = c("g","m","M","s","S"),
                         labels = c("G","M","M","S","S"))
 
 tallas_factor <- factor(tallas,
                         ordered = TRUE,
                         levels = c("g","m","M","s","S"),
                         labels = c("G","M","M","S","S"))
 
 
 #DataFrames
 mi_df <- data.frame(
   "entero" = 1:4, 
   "factor" = c("a", "b", "c", "d"), 
   "numero" = c(1.2, 3.4, 4.5, 5.6),
   "cadena" = as.character(c("a", "b", "c", "d"))
 )
 mi_df
 
 dim(mi_df) # Podemos usar dim() en un data frame
 
 length(mi_df) # El largo de un data frame es igual a su número de 			   columnas
 
 names(mi_df) # names() nos permite ver los nombres de las columnas
 
 class(data.frame) # La clase de un data frame es data.frame
 
 
 #----------------------------------------#
 # ESTRUCTURAS DE CONTROL 
 #----------------------------------------#
 #IF ELSE
 if(4 > 3) {
   "Verdadero"
 }
 
 if(4 > 3) {
   "Verdadero"
 } else {
   "Falso"
 }
 #FOR 
 objeto <- 1:10
 
 for( elemento in objeto){
   print(elemento)
 }
 #WHILE
 
 umbral <- 5
 valor <- 0
 
 while(valor < umbral) {
   print("Todavía no.")
   valor <- valor + 1
 }
 
 #BREAK
 for(i in 1:10) {
   if(i == 3) {
     break
   }
   print(i)
 }
 
 #----------------------------------------#
 # Entrada y Salida de Archivos 
 #----------------------------------------#
 
 url1 <- "https://raw.githubusercontent.com/shirleycr2018/WWC_R_S1/main/heroes_information.csv"
 data1 <- read.csv(url1)
 
 
 url2 <- "https://raw.githubusercontent.com/shirleycr2018/WWC_R_S1/main/Calificaciones.csv"
 data2 <- read.csv(url2, header=TRUE, sep=",")
 
 str(data2)
 data2$Sex <- toupper(data2$Sex)

 as.factor(data2$Sex)
 data2$Sex <- as.factor(data2$Sex)
 str(data2)
 
 
 write.csv(data2, "myNewFile.csv")

 write.csv(data2, "myNewFile.csv")
 
 
 
 
