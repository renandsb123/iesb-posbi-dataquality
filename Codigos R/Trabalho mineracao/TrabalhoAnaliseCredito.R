#usaremos o pacote e1071
install.packages("e1071")
library(e1071)
#lendo arquivo de credito 
#base de dados com 1000 registros e 21 atributos
#escolher o arquivo credito2
credito = read.csv2(file.choose())
View(credito)
dim(credito)

#criando amostras de treino e teste 
#ultimo atributo class me fala se ele eh bom ou mal pagador 
#treinamento 70% e teste 30%

#gerar amostra de 1 e 2 
# 1000 sorteios de 1 e 2 
amostra <- sample(2,1000,replace = T,prob = c(0.7,0.3))
amostra

#separa dados 
creditotreino = credito[amostra ==1,]
creditotreino
dim(creditotreino)


creditoteste = credito[amostra == 2,]
creditoteste
dim(creditoteste)

#gerar o modelo 
#2 parametros principais atributos que irão ser usados
#e variavel de resposta
modelo <- naiveBayes(class ~ ., creditotreino)

modelo
#usa probabilidade de forma independente 
#para cada atributo ele trás a influencia 


#sempre que quiser fazer uma previsão será usado esse modelo

#avaliar desempenho do meu modelo 
#passar o modelo e dados com atributos para a predicao
predicao = predict(modelo, creditoteste)
predicao

#predicao foi criada em cima de dados que o modelo não conhecia 

confusao = table(creditoteste$class, predicao)
confusao


#media nivel de acerto 
taxaacerto = (confusao[1]+confusao[4])/ sum(confusao)
taxaacerto
taxaerro = (confusao[2]+confusao[3])/ sum(confusao)
taxaerro

library("rpart");
library("ROCR");

train_tree = rpart(class ~ ., data =creditotreino)
plot(train_tree)

text(train_tree, pretty = 0, cex = 0.6)


#incluindo probabilidade no modelo 

install.packages("rpart.plot")
library("rpart.plot")

rpart.plot(train_tree, type = 2, yesno=F, fallen.leaves = F,
           extra = 102, under = T, cex=NULL, uniform=T, varlen=3, gap=0,
           space=0, tweak=1.2)
