#
#
# Exercicios propostos

# Questao 1 ---------------------------------------------------------------

# O compilador e um interpretador, um compilador eh um programa de
# computadorou mesmo um grupo de programas que é responsável por traduzir
# um codigo fonte escrito em uma linguagem compilada a um programa 
# equivalente do ponto de vista semantico. O compilador traduz o código
# fonto de uma linguagem de médio/alto nível ára uma linguagem de progrmação
# de baixo nível. Alguns compiladores traduzem o código para um formato
# intermediário, denominado de bytecode que é um arquivo executável.
# Já interpretadores são programas de computador que tem a finalidade
# de ler o código fonte de uma linguagem de programação interpretada e o
# converte em um código executavel, o interpretador porde ler
# linha por linha e converter o código fonte em código objeto (ou bytecode)
# a medida que vai executando o programa OOU o interpretador converte o 
# codigo fonte por inteiro e depois o executa.
# Compilado - C
# Interpretado R.


# Questao 2 ---------------------------------------------------------------

# 1.Integer, double, charactere, logical.
# 2.Os principais tipos de dados da linguagem R s?o vetores, listas, data frame, arrays e matrizes.
# 3. Tipo de dado é a especificação de como o dado representado por cadeia
# de bits é interpretado, refere-se ao conjunto de valores que estes podem assumir
# ou gerar, incluem os numeros, os valores lógicos e o conjunto de caracteres de impressão, 
# A eficiencia de um algoritmo qualquer está intimamente relacionada a disposição, 
# na memoria dos dados que sao tratados pelo programa. Estrutura de dados são formas de 
# distribuir e relacionar os dados disponiveis, de modo a tornar mais eficientes
# os algoritmos que manipulam esses dados.
# 4. Homogêneio <- vetores, matrizes e arrays.
# Heterogeneo <- listas, data frames.


# Questao 3 ---------------------------------------------------------------

# Explicando o porque das sa?das 
# 1. Como pelo menos em uma das posi??es do vetor ? double, ent?o todas as componentes
# ser?o impressas em forma de n?meros (double), pois double ? mais flexivel do que inteiro
# e do que logico, dizendo quem ? x "x <- c(7.1, 2.3, 3L, TRUE)",
# as duas primeiras sa?das normal s?o double esperando que realmente saia,
# exatamente o que foi posto, j? a terceira ? o L denotando que 
# o 3 ter? um espa?o de um inteiro, por?m como tem pelo menos um double,
# e a quarta que o valor de TRUE ? 1 e o valor de False ? 0, como ser? expresso por
# 1.0.

# 2. Seguindo a mesma linha re racioc?neo, y ? um vetor com 4 posi??es, a primeira
# posi??o te?ricamente ? um logico TRUE e a segunda, terceira e quarta posi??o ? a 
# sequencia das tr?s primeiras letras do alfabeto, quando y ? chamado, como a forma de
# armazenamento de um vetor ? homog?neo ele vai trasnformar todas as posi??es 
# para um ?nico tipo de estrutura de dados e como caractere ? o tipo de dado mais flex?vel
# e as tres letras do alfabetos s?o desse tipo, todo o vetor foi expesso como caracteres.

# 3. Todos serao convertidos para inteiro.


# Questao 4 ---------------------------------------------------------------

# A estrutura de dadosd e x continuará a ser um vetor, pois x <- c(1, c(2, c(3, 4))); x, é
# o mesmo que x <- c(1,2,3, 4); como criar um vetor normal, pois é o mesmo que concatenar
# vetores normalmente.


# Questão 5 ---------------------------------------------------------------
# N?o, no R n?o ir? ocorrer nenhum problema se criar um vetor at?mico com obejtos
# de tipos diferentes, como foi visto na quest?o 3,, como vetor ? uma estrutura de
# dados homog?nea ele simplesmente ir? converter todos os objetos dentro do vetor
# para um ?nico tipo sendo ele o tipo mais flex?vel. (caractere > double > integer > logical)

# Questao 6 ---------------------------------------------------------------

# NA ? um tipo de obejto retornado Not avaliable, ou quando h? valores faltantes na estrutura de dados,
# NaN ou quando algumaopera??o n?o pode ser realizada como ao querer dividir algum 
# numero por 0, ou tentar tirar a raiz quadrada de um n?mero negativo, s?o opera??es
# invalidas que retornar? a um NA. INCLUSIVE pesquisar Inf, e -Inf tamb?m vou pesquisar para responder melhor.



# Questao 7 ---------------------------------------------------------------

# No vetor <- c(2, 7, 10, 8), o tipo de dados do objeto ser? double.
vetor <- c(2,7,10,8)
vetor_int <- as.integer(vetor)
vetor_character <- as.character(vetor)
vetor_logical <- as.logical(vetor)


# Questão 8 ---------------------------------------------------------------
objects(grep("bas", search()))
# Afun??o "objects" como a fun??o ls ela lista objetos, retornando
# um vetor de strings e caracteres dando o nome de todos os objetos
# 


# Questao 9 ---------------------------------------------------------------
search()[(grep("gr", search()))]
#???

# Questao 10 --------------------------------------------------------------
# Pegar "a" de l 
l <- c(list(c(3,2), "a"), c(1,2))
l[[2]]


# Questao 11 --------------------------------------------------------------
# Sabendo os níveis de flexibilidade dos tipos dedados.
# charactere > double > integer >  logical

# 1.
c(1, FALSE)
#[1] 1 0
c("a", 1)
#[1] "a" "1"
c(list(1), "a")
# [[1]]
# [1] 1
# [[2]]
# [1] "a"
c(TRUE, 1L)
#[1] 1 1

# 2.
1 == "1"
# Sim retornará TRUE porque o 1 será convetido para caractere.
# 3.
-1 < FALSE
# SIm retornará TRUE por que "FALSE" é considerado como o valor O
# então sim -1 é menor que 0.


# Questao 12 --------------------------------------------------------------

vetor <- 1:25
matrix(vetor, 5,5)
dim(vetor)[5]
# ????


# Questao 13 --------------------------------------------------------------
# Usando paste para nomear as 50 linhas da minha matriz
lnames <- outer("l", 1:50, FUN = "paste", sep = "_")
cnames <- outer("c", 1:50, FUN = "paste", sep = "_")
M <- matrix(1:2500, 50,50)
rownames(M) <- lnames
colnames(M) <- cnames


# Questao 14 --------------------------------------------------------------
# Removendo os nomes das linhas e colunas.
rownames(M) <- NULL
colnames(M) <- NULL


# Questao 15 --------------------------------------------------------------
v1 <- matrix(1:12, ncol = 4, nrow = 3)
w1 <- matrix(1:8, ncol = 4, nrow = 2)

M1 <- rbind(v1,w1)
M1

# Questao 16 --------------------------------------------------------------
# Concatenando matrizes 
v2 <- matrix(1:12, ncol = 2, nrow = 4)
w2 <- matrix(1:12, ncol = 3, nrow = 4)

M2 <- cbind(v2,w2)
M2


# Questao 17 --------------------------------------------------------------

obj <- list(1:3, "a", TRUE, 1.0)
matrix(obj, 2, 2)
# O que ha de interessante? QUe continua captando os diferentes tipos de
# dados mesmo que a estrutura de dados matriz eh homogenea, então
# nao houve a " transformação na estrutura das variaveis.


# Questao 18 --------------------------------------------------------------

nome_alunos <- outer("Aluno", 1:30, FUN = "paste", sep = "_")
# ....


#  Questao 19 -------------------------------------------------------------
# QUando se aplica dim() a um vetor retorna NULL. Não sei explicar o porque.


# Questao 20 --------------------------------------------------------------
# Também retornara TRUE pq uma matriz é um array, um array é uma sequencia de 
# matrizes.


#  Questao 21 -------------------------------------------------------------
x1 <- array(1:5, c(1, 1, 5))
x2 <- array(1:5, c(1, 5, 1))
x3 <- array(1:5, c(5, 1, 1))
x1
x2
x3


# Questao 22 --------------------------------------------------------------
df <- data.frame(x = 1:3, y = c("a", "b", "c"))
df$y
# A estrutura de dados de df$y é um fator.
# Para que df$y retorne um vetor atomico com elementos do tipo charactere
# eh usar 
as.character(df$y)


# Questao 23 --------------------------------------------------------------
data.frame(x = 1:3, y = list(c(1:2, 1:3, 1:4)))
# não sei se essa era a ideia, só sei que corrigiu o erro. Pois bem.


#  Questao 24 -------------------------------------------------------------
notas <- list(c(7.1, 3.2, NA), c(2.7, 8.8, 10.0),
              c(0.0, NA, NA), c(7.7, 8.4, 6.3),
              c(3.6, 6.6, 8.1), c(NA, NA, NA),
              c(7.4, 7.1, 7.3), c(10.0, NA, 7.0),
              c(1.6, 3.2, 5.3), c(8.8, 9.2, 8.0))
# 1. nomes aos elementos 
alunos_names <- outer("Aluno", 1:10, FUN = "paste", sep = "_")
dimnames(notas) <- alunos_names
# Talvez possa usar um unlist algo do tipo, mas to meio assim.


# Questao 25 --------------------------------------------------------------
# T.T


# Questao 26 --------------------------------------------------------------

for(i in 1:7){
cat("i",i," = ",i, "\n", sep = "")
}


# Questao 27 --------------------------------------------------------------
#Imposto pago por homens e mulheres
# homens pagam 15% e mulheres pagam 10%.
valor <- 10000

cat(valor, "o valor a ser pago de imposto é", valor * 0.15, 
    " se vc for homem claro, mas se você for mulher será", valor * 0.1, ".")


# Questao 28 --------------------------------------------------------------
# Resolver a questão acima usando swhich

# Homem, mulher, dinheiro = imposto

imposto <- function(genero, valor){
  
  switch(genero, m = {
    imposto = 0.15
    cat("O imposto em cima do valor é", imposto*valor)
  }, 
  "f" = {
    imposto = 0.1
    cat("O imposto em cima do valor é", imposto*valor)
  }
  )
  
}
imposto("m", 150)


# Questao 29 --------------------------------------------------------------
# Tabuada usando estruturas de repeticao

tabuada <- function(numero, inicio, fim){
  
  for(i in inicio:fim){
    cat(numero,"*",i, "=", numero * i, "\n")
  }
  
}
tabuada(7,1,5)


# Questao 30 --------------------------------------------------------------
# De graus celcius para fahrenheit

cetofa <- function(C){
  
  F <- 1.8 * C + 32
  F
}
cetofa(C = 32)
cetofa(C = 40)


# Questao 31 --------------------------------------------------------------
# Temperaturas inapropriadas
# eu usaria um breac if .... com um cat ou algo do tipo dizendo que esse valor
# nao pode ser usado.


# Questao 32 -------------------------------------------------------------

cetofa <- function(temperatura, ceto = TRUE){
  if(ceto == TRUE){
  F <- 1.8 * temperatura + 32
  F
  }
  else {C <- (temperatura - 32)/1.8
  C
  }
}
cetofa(32, ceto = FALSE)


# Questão 33 --------------------------------------------------------------


