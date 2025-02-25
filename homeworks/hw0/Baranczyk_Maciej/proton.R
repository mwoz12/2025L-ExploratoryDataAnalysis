install.packages("proton")
library(proton)
proton()
#1
employees[employees$name=='John' & employees$surname=='Insecure','login']
proton(action = "login", login="johnins")

#2