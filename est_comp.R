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
# Sim retornará TRUE porque o 1 será convetido para caractere.
# 3.
-1 < FALSE
# SIm retornará TRUE por que "FALSE" é considerado como o valor O
# então sim -1 é menor que 0.
