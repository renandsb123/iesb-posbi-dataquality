#analisando alguns dados da tabela 


dados <- read.csv2(file.choose(), sep = ",", header = T)
dim(dados)
names(dados)
library(dplyr)
library(magrittr)

dados.por.ramo <- dados %>% 
  group_by(ramDescricao)%>%
  summarise(quantidade=n())

dados.por.ramo



dados.por.uf <- dados %>% 
  group_by(ufNome)%>%
  summarise(quantidade=n())

dados.por.uf
names(dados)

valor.por.uf <- dados %>% 
  group_by(ufCodigo,ramCodigo)%>%
  summarise(ValorTotal=sum(Valor))

valor.por.uf


df <- data.frame(valor.por.uf)

summary(df$ValorTotal)

dim(df)
elbow(df)
agrupa <- kmeans(df, centers = 4, nstart = 100)
agrupa
