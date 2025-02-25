install.packages("proton")
library(proton)
proton()

employees
employees[employees$name == "John" & employees$surname == "Insecure", "login"]
proton(action = "login", login="johnins")

top1000passwords

for (i in 1:1000) {
  if (proton(action = "login", login="johnins", password=top1000passwords[i]) != "Password or login is incorrect!") {
    print(top1000passwords[i])
    break
  }
}


