dados <- read.csv2(file.choose(),sep = ",", header = T)

dim(dados)
View(dados)
length(dados)


#selecionando quais colunas iremos trabalhar para fazer uma melhor classificação
dados.agrupados <- dados[c(11,13,15,17)]
View(dados.agrupados)
summary(dados.agrupados)
#função para verificar a melhor quantidade de cluster 
elbow <- function(dataset){
  wss <- numeric(15)
  for(i in 1:15) {
    wss[i] <- sum(kmeans(dataset, centers = i, nstart = 100)$withinss)
  }
  
  plot(1:15,wss, type = "b", main = "Elbow method", xlab = "Numero de clusters",
       ylab = "Grupos ideal para a sequencia", pch=8)
  
  
}


elbow(dados.agrupados)

#segundo o algoritimo a melhor maneira de grupar esses dados seriam em 
#4 grupos 


#fazendo a classificação dos dados 


clusterModel <- kmeans(dados.agrupados, centers = 8, nstart = 100)
clusterModel
names(dados.agrupados)

plot(dados.agrupados$ufCodigo,clusterModel$cluster)
plot(clusterModel$cluster)

dados.agrupados$grupos <- NULL
View(dados.agrupados)

plot(dados.agrupados,clusterModel$cluster)

hist(dados$Valor, dados$grupo)
#criando a coluna grupo nos dados originais 
dados$grupo <- clusterModel$cluster


View(dados.agrupados)

analisar <- data.frame(clusterModel$cluster, dados.agrupados)
analisar
table(clusterModel$cluster, dados.agrupados)

summary(dados.agrupados)
plot(dados.agrupados)

grupos <- table(dados$AnoBase, clusterModel$cluster)

