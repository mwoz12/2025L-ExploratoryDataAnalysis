install.packages("proton")
library(proton)
proton()

xyz <- employees[employees$name == "John" & employees$surname=="Insecure",]$login

proton(action = "login", login=xyz)
