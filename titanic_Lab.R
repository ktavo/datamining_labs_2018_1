#Data mining Lab 5 Titanic

rm(list=ls())
setwd("E:/UBA/Data Mining/Labs")

load("titanic.raw.rdata")

# ¿Cuál es el soporte de Survived=Yes?
nrow(titanic.raw[Survived == 'Yes',])/nrow(titanic.raw)