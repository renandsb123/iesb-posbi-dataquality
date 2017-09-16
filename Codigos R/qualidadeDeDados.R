
censo = read.csv2("data/Censo.csv", stringsAsFactors = FALSE)
View(censo)
#carregar pacote de dados do professor 
source("src/principal.R")
censo <- reformata_censo(censo)


qualidade.dados <- function(coluna){
  
  nome.coluna  = coluna
  print(nome.coluna)
  cat("\n ******* ",nome.coluna, "********")
  total.unique = length(unique(censo[,nome.coluna]))
  cat("\n Qtd de valores unicos :", total.unique)
  
  if(is.numeric(censo[,nome.coluna])){
    max.coluna = max(censo[nome.coluna])
    cat("\n Valor Max:", max.coluna)
  }else{
    cat("\n Não é um numerico")
  }
  
  if(is.numeric(censo[,nome.coluna])){
    min.coluna = min(censo[nome.coluna])
    cat("\n Valor Min:", min.coluna)
  }else{
    cat("\n Não é um numerico")
  }
  
  paste("Tipo de dado da coluna :",class(censo[,nome.coluna]))
      
  is.character(censo[nome.coluna])
  if(is.character(censo[,nome.coluna])){
    
  valores.nulos.total<- censo %>%
    filter_(paste(nome.coluna, "== '' "))%>%
    summarise(n())
  
  
  paste("Qtd valores nulos :", valores.nulos.total[1,1] )
  }else{
    print("teste")
    valores.nulos.total = ''
    
    cat("\n aaaaaaaa :", valores.nulos.total )  
  }
  #dots 
  print(valores.nulos.total)
 # valores.nulos.total = as.numeric(valores.nulos.total)
 # cat("\n Qtd valores nulos :", valores.nulos.total )
  
}

sapply(names(censo),qualidade.dados)

for (i in 1:length(censo)){
  qualidade.dados(names(censo)[i])
}

names(censo)
is.na(censo[,"CPF"])

 censo %>%
  filter(CPF == "")%>%
  summarise(n())
valores.nulos.total



nome.coluna = "CPF"
valores.nulos.total<- censo %>%
  filter_(paste(nome.coluna , "== '' "))%>%
  summarise(n())

valores.nulos.total
