install.packages("proton")
library(proton)
proton()
#Zadanie 1
head(employees)
login <-employees[employees$name == "John" & employees$surname =="Insecure", "login"]