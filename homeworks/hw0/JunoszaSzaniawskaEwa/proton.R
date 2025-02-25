#install.packages("proton")
library(proton)
#proton()
employees[employees$surname == "Pietraszko", "login"]
#proton(action = "login", login="johnins")
#top1000passwords
proton(action = "login", login="johnins", password="1234")

for (i in 1:1000){
  proton(action = "login", login="johnins", password=top1000passwords[i])
}
logs[logs$login == "slap", "host"]
