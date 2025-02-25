install.packages("proton")
library(proton)
proton()

employees

employees[c(employees$name == "John", employees$surname == "Insecure"), "login"]


top1000passwords

for(i in 1:1000) {
  proton(action = "login", login = "johnins", password = top1000passwords[i])
}

logs
