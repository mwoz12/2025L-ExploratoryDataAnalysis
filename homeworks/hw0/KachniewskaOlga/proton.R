install.packages("proton")
library(proton)
proton()

#Problem 1
data("employees")
head(employees)

john_insecure <- employees[employees$name == "John" & employees$surname == "Insecure", ]

login_john_insecure <- john_insecure$login
print(login_john_insecure)


proton(action = "login", login="johnins")


