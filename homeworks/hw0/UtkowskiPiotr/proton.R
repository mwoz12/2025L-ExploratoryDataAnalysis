install.packages("proton")
library(proton)
proton()
head(employees)
employees[employees$name=="John" & employees$surname=="Insecure",]
proton(action = "login", login="johnins")
for(i in 1:1000){
  proton(action="login", login="johnins", password=top1000passwords[i])
}

employees[employees$name=="Slawomir" & employees$surname=="Pietraszko",]
pom <- data.frame(logs[logs$login=="slap",], row.names = NULL)
pom2<- data.frame(table(pom$host))
max(pom2$Freq)
pom2[pom2$Freq=="112",]
proton(action = "server", host="194.29.178.16")
