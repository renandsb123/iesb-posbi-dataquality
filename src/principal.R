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
#### import end

hist(rnorm(1000))
# importa o arquivo CSV para um data.frame
censo.df <- read.csv2("data/Censo.novo.csv", stringsAsFactors = FALSE)

# lista as 10 primeiras linhas para ver se está tudo ok
head(censo.df)

# lista a estrutura do data.frame, com os campos e os tipos dos dados
str(censo.df)

# transforma o campo DataNasc de "chr" para "datetime"
d <-as.Date(censo.df$DataNasc, format = "%d/%m/%y" )
dlt <- as.POSIXlt(d)
bool <- year(d) > 2000 
dlt$year[bool] <- dlt$year[bool] - 100
censo.df$DataNasc <- as.Date(dlt)
str(censo.df)

# transforma o campo salário em numérico
censo.df$Salario <- as.numeric(str_replace(censo.df$Salario, "\\.", ""))
str(censo.df)

censo.df %>% group_by(CategProf, AnosEmprego) %>%
        summarise(quantidade = n(), media.salario = mean(Salario)) %>% View
