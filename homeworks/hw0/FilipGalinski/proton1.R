install.packages("proton")
library(proton)
proton()

login <- employees[name$name == "John" & employees$surname == "Insecure", "login"]
login
proton(action = login, login = login)
  
