install.packages("proton")
library(proton)
proton()

df <- employees
employees
employees[employees$name == "John" & employees$surname == "Insecure",]

proton(action = "login", login="johnins")

for (i in 1:1000){
  string = proton(action = "login", login="johnins", password=top1000passwords[i])
  if (string == "Success! User is logged in!"){
    print(top1000passwords[i])
    break
  }
}

unique(sort(logs[logs$login == "johnins","host"]))

proton(action = "server", host="194.29.178.81")
