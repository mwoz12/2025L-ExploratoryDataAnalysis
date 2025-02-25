install.packages("proton")
library(proton)
proton()

data("employees")
head(employees)
john_login <- employees[employees$name == "John" & employees$surname == "Insecure", "login"]
print(john_login)
proton(action = "login", login = john_login)

data("top1000password")



