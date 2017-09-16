
censo <- read.csv2("data/Censo.csv")
names(censo)
#Selecionando alturas que não pode ser humanas
altura = censo$Altura.cm
summary(altura)

media.altura = mean(altura)
desvio.altura = sd(altura)

gigantes = altura[altura > media.altura + 4* desvio.altura]
gigantes


 ####calculando IMC
censo$IMC = censo$Peso.kg/(censo$Altura.cm/100)^2
summary(censo$IMC)

imc = censo$IMC
media.imc = mean(imc)
desvio.imc = sd(imc)

fora.media.peso = imc[imc > media.imc + 4 * desvio.imc]
fora.media.peso


#selecionando indices errados
fem.errados <- censo$Sexo == "Fem."
masc.errados <- censo$Sexo == "Masc."

#qtd masc. e fem. na tablea 
#443
length(censo[fem.errados,]$Sexo)
#1615
length(censo[masc.errados,]$Sexo)

#substitui os valores pelos valores corretos 

censo[fem.errados,]$Sexo = "F"

censo[masc.errados,]$Sexo = "M"



#validanddo quantidade de fumantes
#censo %>% group_by(Sexo, Fuma) %>%
library(dplyr)
library(magrittr)
str(censo)


fumantes.por.sexo <- censo %>%
  filter(Fuma == 1)%>%
  group_by(Sexo)%>%
  summarise(quantidade=n())

fumantes.por.sexo

#checando quantidade de CPFs inválidos
censo.nome.cpf = censo[,c("CPF","Nome")]
head(censo.nome.cpf)

cadastro =  read.csv2("data/CadastroCPF.csv")
head(cadastro)
dim(cadastro)

m = merge(cadastro, censo.nome.cpf, by="CPF", all.y = TRUE)
registros.problema.identificado = m %>% filter(is.na(Nome.x))
View(registros.problema.identificado)

censo

names(censo)


cpf.nulo = is.na(censo$CPF)
unique(cpf.nulo)
str(cpf.nulo)
cpf.nulo[1]
contador = 0
for( i in 1:length(cpf.nulo)){
  if(cpf.nulo[i] == TRUE){
    contador = contador +1
  }
}
contador



resumoTabela(censo[2])

resumoTabela<- function(coluna){
  nome.coluna = names(coluna)
  valores.unicos = unique(coluna)
  cat("Distinct de valores da coluna\n")
    print(valores.unicos)
    
    print("Valor Máximo")
    max(coluna)
    
    
#  print("Quantidade de valores null")
 # valores.nulos = is.na(coluna)
 
  
  }  
  if(length(is.na(coluna)) > 0){
    is.na(coluna)
  }else{
    print("Não existem valores nulos")
  }
    
  print("Valor Mínimo")
    min(coluna)
}




  for(i in 1:length(censo)){
    resumoTabela(censo[i])
  }


