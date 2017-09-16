#planilha de dados 



Nome <- c("Joao","Maria","Tereza")

Idade <- c(22,55,66)

Genero <- c("Masculino","Feminino","Feminino")


dados <- data.frame(Nome,Idade,Genero)
dados

#estrutura do objeto de dados
str(dados)

#Fator = variavel categorica 


#quantidade de linhas e colunas de uma matriz
dim(dados)

#ncol() quantidade de colunas 
#nrow() quantidade de linhas 

#nome das colunas 
colnames(dados)

#resumo de todas as variaveis do dataframe
summary(dados)



#**********Acessando alementos de dataframe***********


dados
#linhas, colunas
dados[1,]

#so 1 e 3 
dados[c(1,3),]


dados 

dados$Idade <- c(40,66,88)

dados


#adicionando nova varivavel 

dados$Cidade <- c("Recife","Brasilia","Olinda")

dados

dados$Renda <- c(4000,5500,7000)

dados

#remover variavel 

dados$Renda <- NULL
dados
 #ou 

dados <- dados[,-5] #dados <- dados[,-(3:5)] retirar da terceira a quinta
dados



#adicionar linhas , elementos, casos

dados
dados <-dados[,-4]

dados[4,] <- c("Paula",70,"Feminino")
#vai dar erro , se for fator o proximo individo tem q ser igual os dos fatores que ja existem 

#temos que adicionar um novo nivel 
#mudar de fator para caracter para aceitar os nomes 
#transformar nomes para caracter
dados$Nome <- as.character(dados$Nome) 

str(dados)

dados$Idade <- as.numeric(dados$Idade)

str(dados)

#retirar o dados 
#retirar linhas 4 com todas as colunas 
dados <- dados[-4,]
dados


#********Operadores Lógicos******


