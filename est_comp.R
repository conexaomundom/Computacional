#
#
# Exercicios propostos

##### QUESTÃO 1
# O compilador e um interpretador.
# Compilado - C
# Interpretado R.

##### QUESTÃO 2
# 1.Integer, double, charactere, logical.
# 2.Os principais tipos de dados da linguagem R são vetores, listas, data frame, matrizes.
# 3. 
# 4.

##### QUESTÃO 3
# Explicando o porque das saídas 
# 1. Como pelo menos em uma das posições do vetor é double, então todas as componentes
# serão impressas em forma de números (double), pois double é mais flexivel do que inteiro
# e do que logico, dizendo quem é x "x <- c(7.1, 2.3, 3L, TRUE)",
# as duas primeiras saídas normal são double esperando que realmente saia,
# exatamente o que foi posto, já a terceira é o L denotando que 
# o 3 terá um espaço de um inteiro, porém como tem pelo menos um double,
# e a quarta que o valor de TRUE é 1 e o valor de False é 0, como será expresso por
# 1.0.

# 2. Seguindo a mesma linha re raciocíneo, y é um vetor com 4 posições, a primeira
# posição teóricamente é um logico TRUE e a segunda, terceira e quarta posição é a 
# sequencia das três primeiras letras do alfabeto, quando y é chamado, como a forma de
# armazenamento de um vetor é homogêneo ele vai trasnformar todas as posições 
# para um único tipo de estrutura de dados e como caractere é o tipo de dado mais flexível
# e as tres letras do alfabetos são desse tipo, todo o vetor foi expesso como caracteres.

# 3. Boa quaestion

##### QUESTÃO 4

##### QUESTÃO 5
# Não, no R não irá ocorrer nenhum problema se criar um vetor atômico com obejtos
# de tipos diferentes, como foi visto na questão 3,, como vetor é uma estrutura de
# dados homogênea ele simplesmente irá converter todos os objetos dentro do vetor
# para um único tipo sendo ele o tipo mais flexível. (caractere > double > integer > logical)

##### QUESTÃO 6
# NA é um tipo de obejto retornado Not avaliable, ou quando há valores faltantes na estrutura de dados,
# NaN ou quando algumaoperação não pode ser realizada como ao querer dividir algum 
# numero por 0, ou tentar tirar a raiz quadrada de um número negativo, são operações
# invalidas que retornará a um NA. INCLUSIVE pesquisar Inf, e -Inf também vou pesquisar para responder melhor.

##### QUESTÃO 7
# No vetor <- c(2, 7, 10, 8), o tipo de dados do objeto será double.
vetor <- c(2,7,10,8)
vetor_int <- as.integer(vetor)
vetor_character <- as.character(vetor)
vetor_logical <- as.logical(vetor)

##### QUESTÃO 8
objects(grep("bas", search()))
# Afunção "objects" como a função ls ela lista objetos, retornando
# um vetor de strings e caracteres dando o nome de todos os objetos
# 