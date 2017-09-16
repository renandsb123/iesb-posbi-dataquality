# Listas conjunto de objetos diferentes 


idade <- c(30,40,55)

genero <- c("Masculino","Masculino","Feminino")

Cidade <- c("Brasilia","Londres","São Paulo")
#nome das linhas
r.names <- c("Marcos","João","Maria")
#nome das colunas
c.names <- c("Gastos com alimentação","Gasots com Moradia", "Gastos com Transporte")

gastos<- array(1:20, dim = c(3,3,3), dimnames = list(r.names,c.names,c("Jan","Fev","Mar")))

gastos

#trasnformar isso em lista 

# 3 primeiros são vetores e o 4º eh um array
lista1 <- list(idade,genero,Cidade,gastos)
lista1

#colocar nome de cada objetos 

names(lista1) <- c("Idade","Genero","Cidade","Gastos")
lista1 <- list(idade,genero,Cidade,gastos)
lista1


#acessando informações de Listas

#indice do q quer ser acessado 
lista1[1]

lista1["Gastos"]

lista1$Gastos

#primeiro elementos de Idade
lista1$Idade[1]

lista1$Gastos[1,,]

lista1$Gastos[,1,]

lista1$Gastos[,2,]
#linha, coluna, matrix (ordem de acesso)
lista1$Gastos[,,1]

#modificando elementos de uma lista 


lista1$Idade <- c(22,55,77)
lista1$Idade


lista1$Gastos[,,1]

#pegou a primeira matriz mutiplicou por 100 e devolveu para a mesma matrix 
lista1$Gastos[,,1] <- lista1$Gastos[,,1]*100

#soma de matrizes

lista1$Gastos[,,1] <- lista1$Gastos[,,1]+lista1$Gastos[,,2]

#adicionar e remover elementos 


lista1[5] <- c("mensagem de atencao")
lista1
#adicionando nome ao elementos na lista 
names(lista1)[5] <- "aviso"

#removendo elementos da lista 
lista1[5] <- NULL

names(lista1)


#criando outras listas 

list2 <- list(c("2017","2018","2019"),40,50)

list2
names(list2) <- c("Ano","numero1","numero2")
      

#merge com listas / pode ser feito com quantas listas forem necessárias
#ordem vai ser do jeito que você colocou para junção

list3 <- c(lista1, list2)
list3

lista4 <- merged.list <- c(lista1,list2)
lista4
