
resu
#Esta função realiza as seguintes atividade:
#cadastra o alinos
#recebe as notas
#mostra sua media e diz se foi aprovado
#cadastra outro aluno 



cadastraAluno <- function(z)
{  
  i<-1
    nome <-as.character()
    nota1 <-as.numeric()
    nota2 <-as.numeric()
    nota3 <-as.numeric()
    media <- as.numeric()
   situacao <- as.character()

   
   alunos <- data.frame(nome,nota1,nota2,nota3,media,situacao)
   #redefinindo para nao ser um fator 
   alunos$situacao<- as.character(alunos$situacao)
   alunos$nome <- as.character(alunos$nome)
  
  
  #scan(n-1) para apenas digitar uma vez
   print("Deseja cadastrar outro aluno ? 1-Sim 0-Não")
   x<-scan(n=1)
   
   while(x==1){
     print("Nome")
     nome<-scan(what=character(),nmax=1)
     
     print("nota 1")
     nota1 <- scan(n=1)
     
     print("nota 2")
     nota2 <- scan(n=1)
     
     print("nota 3")
     nota3 <- scan(n=1)
     
     notas<-c(nota1,nota2,nota3)
     
             for (j in 1:length(notas)){
                  cat("Nota na prova",j, "-->")
                  cat("",notas[j],"\n")
             }
           
               media<- mean(notas)
               cat("Média do Aluno :", media,"\n")
               
               if(media>=7){
                 print("aluno aprovado")
                 situacao <- "Aprovado"
               }else{
                 print("aluno reprovado")
                 situacao <- "Reprovado"
               }
               
               alunos[i,]<-c(nome,nota1,nota2,nota3,media,situacao)
               
               print("Cadastrar outro aluno: Sim->1 Não -> 0")
               x<-scan(n=1)
               
               i<-i+1
               
   }
   print("Obrigado")
   
   return(alunos)
}

