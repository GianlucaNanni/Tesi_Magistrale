library(vegan)
library(readxl)
data=data.frame(Indice_di_Sorensen_Regioni_generi)
rownames(data)=data[,1] 
data=data[,-1] 
#View(data) 

ncol(data)/mean(specnumber(data)) - 1
beta <- vegdist(data,binary=TRUE)
mean(beta)
betadiver(help=TRUE)
s <- betadiver(data, "sor")
quantile(s)




