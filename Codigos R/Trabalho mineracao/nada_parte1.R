

cluester = read.csv(file.choose(),sep = ";", header = T)
head(cluester)

colnames(cluester)

cluester = cluester[,-1,]
cluester

modelo = kmeans(cluester,center = 4)
modelo$cluster

table(cluester$sitCodigo, modelo$cluster)
