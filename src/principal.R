# Laboratório de Qualidade de Dados utilizando a linguagem R
# agosto de 2017
# @author: Arnaldo Vitaliano

#### import start
# importando e carregando bibliotecas R utilizadas neste exercício
if(!require(stringr)){
  install.packages("stringr")
  library(stringr)
}

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}

if(!require(lubridate)){
  install.packages("lubridate")
  library(lubridate)
}
#### import end
#### import end

reformata_censo <- function(censo.df){
  
  # transforma o campo DataNasc de "chr" para "datetime"
  d <-as.Date(censo.df$DataNasc, format = "%d/%m/%y" )
  dlt <- as.POSIXlt(d)
  bool <- year(d) > 2000
  dlt$year[bool] <- dlt$year[bool] - 100
  censo.df$DataNasc <- as.Date(dlt)
  
  # transforma o campo salário em numérico
  censo.df$Salario <- as.numeric(str_replace(censo.df$Salario, "\\.", ""))
  
  # transforma campos de categoria em factor
  censo.df$Fuma <- as.factor(censo.df$Fuma)
  censo.df$Sexo <- as.factor(censo.df$Sexo)
  censo.df$CodReg <- as.factor(censo.df$CodReg)
  censo.df$CodMunic <- as.factor(censo.df$CodMunic)
  censo.df$CategProf <- as.factor(censo.df$CategProf)
  
  return(censo.df)
  
}

remove_outliers <- function(x, n.sd = 4){
  
  #tira a media e o desvio padrao
  media <- mean(x)
  sd <- sd(x)
  
  # seleciona outliers acima e abaixo da media + n vezes desvio padrao
  maiores <- ( x > media +  n.sd * sd)
  menores <- ( x < media +  n.sd * sd)
  
  # remove os outliers do vetor
  x <- x[!maiores]
  x <- x[!menores]
  
  #retorna o novo vetor
  return(x)
}
remove_outliers
