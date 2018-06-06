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

#Confianza
#Probabilidades condicionales
#1 {Class=Crew} => {Survived=Yes}
nrow(titanic.raw[Class == 'Crew' & Survived == 'Yes' , ])/nrow(titanic.raw[Survived == 'Yes' , ])
#2 {Class=1st} => {Survived=Yes}
nrow(titanic.raw[Class == '1st' & Survived == 'Yes' , ])/nrow(titanic.raw[Survived == 'Yes' , ])

#Para 1 y 2 calcule para los no sobrevivientes e interprete los resultados.
nrow(titanic.raw[Class == 'Crew' & Survived == 'No' , ])/nrow(titanic.raw[Survived == 'No' , ])
nrow(titanic.raw[Class == '1st' & Survived == 'No' , ])/nrow(titanic.raw[Survived == 'No' , ])

#4¿Cuál de las siguientes reglas tiene minconf >= 0.3? 
nrow(titanic.raw[Age == 'Adult' & Sex == 'Female' & Survived == 'Yes', ])/nrow(titanic.raw[Survived == 'Yes' , ])
nrow(titanic.raw[Age == 'Adult' & Sex == 'Male' & Survived == 'No', ])/nrow(titanic.raw[Survived == 'No' , ])

#
nrow(titanic.raw[Age == 'Adult' & Sex == 'Female' , ])/nrow(titanic.raw[Survived == 'Yes' , ])
nrow(titanic.raw[Age == 'Adult' & Sex == 'Male' , ])/nrow(titanic.raw[Survived == 'No' , ])

