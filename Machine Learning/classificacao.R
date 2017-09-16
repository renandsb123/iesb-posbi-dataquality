#carregar doi pacotes para analisar os dados 


#e1071 ou klaR


#carregando o e1071

install.packages("e1071", dependencies = T)
library(e1071)


credito <- read.csv(file.choose(),sep=",", header = T)

#ver os primeiros atributos
head(credito)

#21 colunas 1000 linhas
dim(credito)


#construir um modelo 
#treinar com os dados diferentes 70% para 30%

#array de 1 e 2 com a relevancia 70% e 30%
#amostra criada com posibilidade ate o numero 2, 10000 registros 
#com reposicao e probabilidade de 1 - 70% e 2 -30%
amostra <- sample(2,1000,replace = T, prob = c(0.7,0.3))
amostra


#base para separar os dados 

#separei em 2 variavies minhas amostras 
creditotreino = credito[amostra == 1,]
creditoteste = credito[amostra == 2,]
#checando as amostras
dim(creditotreino)
dim(creditoteste)

#criacao do modelo 
#primeiro os atributos, depois os dados
#. tras todos os outros atributos 

#usa probabilidade de forma independente , para cada atributo 
modelo = naiveBayes(class ~ . , creditotreino )

modelo

#modelo é um objeto pode salvar exportar etc

#avaliar o desempenho do modelo 
#sempre perdict ( modelo, dados de teste)
predicao = predict(modelo, creditoteste)
#dizer se eh um bom ou mal pagador 
predicao
#mesma quantidade de elemenstos do teste que criamos 

#avaliar como foi o teste 
#criar uma tabela de confusao

confusao = table(creditoteste$class, predicao)
confusao
# medir o indice de confiabilidade do modelo 
taxaacerto = (confusao[1]+confusao[4])/sum(confusao)
taxaacerto

taxaerro = (confusao[2]+confusao[3])/sum(confusao)
taxaerro






