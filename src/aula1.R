# primeiro arquivo da aula de data quality

1 + 1
3*4

2 - (4*2)/5

2^4
hist(rnorm(10000))
x <- 100 
y <- 23

x + y
x*y
x/y

vetor <- c(1,4,5,10,2,x,y)
vetor


complexos <- c(20i, 2+9i)
complexos


texto <- c("oiii", "bom", "teste", "nao sei")
texto


as.character(vetor)

#true = 1 false =0
as.numeric(logico)


as.numeric("123445")
#estrutura da variavel
str(texto)
str(vetor)

length(vetor)

length(1:100)

#valor absoluto
abs(x)

#exponencial em e 
exp(x)
#raiz quadrada
sqrt(x)
#fatorial
factorial()
#analise combinatoria 
choose(20,2)


#media
mean(x)

#somatoria 
sum()

#produtoria vetor multiplico todo mundo 
prod()
#somatoria cumulada 
cumsum()

#produtorio cumulado
cumprod()


x<- c(1,3,-5,10)
prod(x)
cumsum(x)


#variancia 
var()

#desvio padrao 
sd(x)

#mediana
median(x)

#minimo
min(x)

#maximo
max(x)


#outlier media +- 4* desvio padrao 

#numeros sair todo igual ramdomico 
teste <- set.seed(1)
teste

horas_trabalhadas <-  rnorm(1000, 8, 0.5)
valor_por_hora <- rnorm(1000,30,2)

horas_trabalhadas

valor_por_hora

#exercicio 

str(horas_trabalhadas)
str(valor_por_hora)

length(horas_trabalhadas)
length(valor_por_hora)


max(horas_trabalhadas)
min(horas_trabalhadas)


max(valor_por_hora)
min(valor_por_hora)

recebido_por_dia <- c(horas_trabalhadas * valor_por_hora)
recebido_por_dia

max(recebido_por_dia)
min(recebido_por_dia)

sum(recebido_por_dia)


class(recebido_por_dia)


getwd()
setwd("/Users/Renan/iesb-posbi-dataquality")
#decimal
dec

#separador
sep


mtcars

write.csv2(mtcars,"mtcars.csv")


str(mtcars)


carros <- read.csv("mtcars.csv", dec=",", sep = ";")
carros


censo<- read.csv2("data/Censo.csv", stringsAsFactors = FALSE)
censo

str(censo)

names(censo)

View(censo)
#conta numero de colunas 
length(censo)
#conta numero de linhas 
nrow(censo)

head(censo[3])
#mais de uma coluna
censo[c(2,3)]

censo[c("Salario","AnosEstudo")]

min(censo$Altura.cm)

max(censo$Altura.cm)




altura <- censo$Altura.cm
summary(altura)
media.altura <- mean(altura)
media.altura
desvio.altura <- sd(altura) 
altura > media.altura + 4* desvio.altura 
gigantes <- altura[altura > media.altura + 4*desvio.altura]
gigantes




# transforma o campo DataNasc de "chr" para "datetime"
d <-as.Date(censo$DataNasc, format = "%d/%m/%y" )
d
dlt <- as.POSIXlt(d)
dlt
bool <- year(d) > 2000 

dlt$year[bool] <- dlt$year[bool] - 100
censo.df$DataNasc <- as.Date(dlt)
str(censo)

