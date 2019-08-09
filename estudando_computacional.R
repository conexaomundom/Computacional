install.packages("magrittr")

# Passando atributo 
x <- 1L:10L

attr(x = x, which = "desc") <- "vetor com valores inteiros"
attr(x = x, which = "M") <- matrix(data = c(1,7,3,8), ncol = 2, nrow = 2)
  
  
# Um atributo não afetam as operações que realizamos com x.
sum(x + 1)

# listando os atributos do obejeto x: 
attributes(x)

# Acessando o atributo de nome M (Uma matrix)
solve(attr(x, "M"))

# Como é possível introduzir atributos à qualoquer objeto em R, e funções 
# são objetos, então considere o trecho de codigo, emque é introduzido
# o atributo M do objeto x como atributo da funcao f() abaixo:

f <- function(x){
  
  # x é um objeto numerico
  if(X == 0) "0"
  else ifelse(x > 0, "+", "-")
  
}

# Introduzindo o atributo de nome desc que contém uma breve
# descrição da funcao f():

attr(f, "desc") <- "retorna -, 0 ou +, a depender do valor passado à x"
attr(f, "desc")

# A função body() permite-nos acessar o corpo de uma função (codg da funcao)
# porém só irá visualizar as partes do código que foram implementadas
# estritamente em R. 

body(ls)
body(sum)

# POdemos também paddar uma função como argumento à outra funçaõ
# f() e g(), em que passamos f() como argumento à funcao g()

# as funções não necessariamente necessitam ter argumentos
f <- function(){
  
  "olá"
}

g <- function(func){
 
  paste(func, "mundo", sep = " ")
   
}

g(func = f())

# Compondo as funções nchar(), g() e f()
# A funcao nchar() retorna a quantidade de characteres

nchar(g(func = f()))

# Também podemos não nomear uma funcao, quando temos uma função curta 
# que são passadas como argumento à outras funcoes 
# Uma funcao anonima passada como argumento à funcao integrate()
integrate (function(x) x ^ 2, lower = 0, upper = 2)$value

# Po demos também compor funções utilizando o operador %>%
# Como: 
library(magrittr)
f %>% g %>% nchar # ctrl + shift + m 


# integrate(function(x))
(function(x) x^2) %>%  integrate(lower = 0, upper = 2) %$% value
# operadores pipes não deixam o codigo mais eficiente, nem menos
# eficientes.

# O escopo é o  ue delimita a relação de objetos e expressões, ou seja,
# em que partes do código um ou mais objetos são reconhecidos por uma dada
# dada expressão ou conjunto de expressões. Na maioria das linguagens 
# de programação o escopo lexico, também chamado de escopo estático, 
# uma vez que podem ser delimitados estatisticamente, antes da execução 
# do programa por meio da sintaxe da linguagem, ou seja, por meio da 
# estrutura léxica da linguagem.

# R tem escopo léxico.

x <- "fora"

f <- function( ){
  
  x <- "dentro"
  x
}
f()


x <- "fora"
f <- function(){
  x
}

f()

#####

x <- "estou fora de f"

f <- function(){
  g <- function(){
    x
  }
  list(g = g(), x = x)
}
f()

###

x <- 0

f <- function(){
  
  x <- x + 1
  x
  
}

f()


# mas se usar atribuição profunda
# <<-
x <- 0

f <- function(){  x <<- x + 1;  x}
f()

# OBservando 
x <- 0
f <- function(){
  x = 7
  x <<- x + 1
  x
}

f()
x

####

f <- function(){
  2 -> x
  x * 2 ->> x
  x
}
f(); x

# Lazi evaluation -----------------------------------------------------------------
# (promises) uma estrutura de dados
# Promises possuem um ambiente em que uma funcao é avaliada/invocada
# Uma expressão valida passada para um argumento de uma funcao
# um valor, resultado da avaliação de uma expressão em um ambiente específico.

# Em R os argumentos são avaliados de forma preguiçosa, são apenas
# promessas, ou seja, só serão acvaliados caso seja necessário usar 
# esse arguneto, se não, o parametro poderá eventualmente nunca seravaliados
# exemplo

f <- function(x){
  
  y <- 1
  y
  
}
f()


# varargs:... (dot-dot-dot) -----------------------------------------------

set.seed(0)

data <-rnorm(n = 1000000, mean = 0, sd = 1)
myhist <- function(x = data, ...){
  # Perceba o uso de ... em hist():
  
  result <- hist(x, ...)
  list(n = length(result$counts), counts = result$counts)
  
}

# A funcao muhist() não possuia a definição dos argumentos col, 
# main, ylab ee border

myhist(x = data, col = rgb(1,0.9, 0.8), main = "", ylab = " freq",
       border = NA)

#####

f <- function(...){
  
  n <- ...length()
  if(n != 3)
    stop("A funcao deve ter exatamente 3 argumentos")
  else
    for(i in 1:...length()){
      cat("O elemento ", i, " de \"...\" é: ", ...elt(i), "\n")
    }
  
  return(..1 * ..2 + ..3)

}


f(2, 3, 1)
## OBS:::: ...length() retorna o tamanho de ...
# ...elt(i) equivale a funcao ..i. A funcao ...elt(i) nada pe mais do 
# que fazer eval(paste("..", n))

# O uso de funcoes varargs destacam-se também em situações em que
# fazemos uso de programação orientada a objetos por funcao generica
# sistema de orientação a objeto conhecido, em R como o sistema S3, 
# de orientação a objeto 

# Funcoes poliformicas - capacidade de uma funcao ter varias formas
# e se adequar a cada uma delas. 
sum(1:5, NA, na.rm = TRUE)


# Funcoes infixas -------------------------------------------------------------------------


