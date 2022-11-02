install.packages("vegan")
library(vegan)
install.packages("readxl")
library(readxl)
data=data.frame(Indice_di_Sorensen_AI_ES) #oppure: data <- read_excel("C:/Users/Nauta/Downloads/Indice_di_Sorensen_AI_ES.xlsx") #cmd = vedi percorso

rownames(data)=data[,1] 
data=data[,-1] 
View(data) 
ncol(data)/mean(specnumber(data)) - 1
beta <- vegdist(data, binary=TRUE)
mean(beta)
betadiver(help=TRUE)
s <- betadiver(data, "sor")
quantile(s)

