install.packages("proton")
library(proton)
proton()

#Problem 1
head(employees)
login <- employees[employees$name == "John" & employees$surname == "Insecure", 'login']
login
proton(action = "login", login = login)
