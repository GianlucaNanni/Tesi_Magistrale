install.packages("bipartite")
library(bipartite)
install.packages("readxl")
library(readxl)
#Import Dataset ‘Network_Api_Piante_ERAI.xls’ da Excel
data=data.frame(Network_Api_Piante_ERAI)
rownames(data)=data[,1] 
data=data[,-1] 
#View(data) 

#ERAI:
plotweb(data, text.rot = 90, labsize = 1, arrow = "both.center", y.width.high = 0.05, y.width.low = 0.05, adj.low = 1, adj.high = 0.01, low.y = 0.8, high.y = 1.35)

visweb(data)
networklevel(data)
grouplevel(data)

#Modularità
mod=computeModules(web=data, steps = 1E8)
mod@likelihood
plotModuleWeb(mod)