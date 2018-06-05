#Data mining Lab 5 Titanic

rm(list=ls())
setwd("E:/UBA/Data Mining/Labs")

load("titanic.raw.rdata")

# ¿Cuál es el soporte de Survived=Yes?
nrow(titanic.raw[Survived == 'Yes',])/nrow(titanic.raw)

# ¿Cuál es el soporte de Survived=Yes y Sex=Male?
nrow(titanic.raw[Survived == 'Yes' & Sex == 'Male' ,])/nrow(titanic.raw)

#¿Cuales itemsets de los que se listan a continuación tienen mayor soporte?
nrow(titanic.raw[Survived == 'Yes' & Sex == 'Male' & Class == '3rd',])/nrow(titanic.raw) #0.03998183
nrow(titanic.raw[Survived == 'No' & Sex == 'Male' & Class == '3rd',])/nrow(titanic.raw) #0.191731
