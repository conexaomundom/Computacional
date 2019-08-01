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

# A função body 

