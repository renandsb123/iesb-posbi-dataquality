# Exemplos de uso do R

# operações numéricas básicas
1+1 # com o cursor nesta linha, apertar CTRL+ENTER
3 * 4
2 - (4*2)/5
#exponenciacao
4^2
#divisao inteira
21%/%4
#resto de divisao inteira (mod)
21 %% 4

# gráficos básicos
1:10
plot(1:10)
rnorm(100)
hist(rnorm(100))
hist(rnorm(100))
hist(rnorm(100))

# Operadores Básicos

## Assignment Operator (Atribuição)

x <- 100  # atribui o valor 100 à variável x
x # mostra o valor da variável x

y <- 23 # atribui o valor 23 à variável y
y

# operações básicas utilizando objetos
x + y
x * y
y / x

## Concatenação
# cria um vetor de valores (do mesmo tipo)
c(x,y) # cria um vetor de 2 elementos, com os valores de x e y
vetor <- c(x,y)
vetor

## Classes de Vetores
numero <- c(546.90, 10, 789) 

# note o L
inteiro <- c(1L, 98L) 

# note o i
complexo <- c(20i, 2+9i) 

# note as aspas
texto <- c("meu", "vetor", "com", "varias", "palavras")

# sempre maiúsculo
logico <- c(TRUE, FALSE, TRUE)

numero
inteiro
complexo
texto
logico

class(numero)
class(inteiro)
class(complexo)
class(texto)
class(logico)

## Teste de classe

is.numeric(numero)
is.character(numero)

is.character(texto)
is.logical(texto)

## Conversão de classe
# Número vira texto
as.character(numero)

# TRUE -> 1, FALSE -> 0
as.numeric(logico)

# Não faz sentido
as.numeric(texto)

# Faz sentido
as.numeric("129873")

# Estrutura e tamanho de objetos
str(x)
str(y)
str(vetor)
str(numero)
str(inteiro)
str(complexo)
str(texto)
str(logico)

length(x)
length(y)
length(vetor)
length(texto)

plot(numero)
numero

# Funcóes matemáticas

x <- c(1, 3, -5, 10)
x
# valor absoluto
abs(x)
# exponencial em e
exp(x)
# raiz quadrada
sqrt(x)
# fatorial
factorial(3)
# análise combinatória
choose(20,2)

# Funçoes que operam com todos os valores do vetor

x
#media
mean(x)
#somatoria
sum(x)
#produtória
prod(x)
#somatório cumulado
cumsum(x)
# produtório cumulado
cumprod(x)
# variância
var(x)
# desvio padrão
sd(x)
# mediana
median(x)
# mínimo
min(x)
# máximo
max(x)

# Operadores lógicos
1 == 0  # igual
1 != 0  # diferente
1 > 0   # maior que
1 < 0   # menor que
! 1 < 0 # negação
TRUE & FALSE # operador AND
TRUE | FALSE # operador OR

# Exercício
set.seed(1)
horas_trabalhadas <- rnorm(1000, 8, 0.5)
valor_por_hora <- rnorm(1000, 30, 2) 
#horas_trabalhadas[sample(1:1000,5)] <- ifelse(rbinom(5,1,0.5),NA,0)
valor_por_hora
horas_trabalhadas

# Solução
str(valor_por_hora)
str(horas_trabalhadas)
class(valor_por_hora)
class(horas_trabalhadas)
length(valor_por_hora)
length(horas_trabalhadas)
min(valor_por_hora)
max(valor_por_hora)
min(horas_trabalhadas)
max(horas_trabalhadas)
valor_por_hora * horas_trabalhadas
sum(valor_por_hora * horas_trabalhadas)


# Escrevendo CSV
mtcars
write.csv2(mtcars, "mtcars.csv")

censo <- read.csv2("data/Censo.novo.csv")
censo

