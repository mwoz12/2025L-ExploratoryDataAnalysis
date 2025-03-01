install.packages("proton")
library(proton)
proton()
employees
proton(action="login",login="XYZ")
login<-employees[employees$name=="John" & employees$surname=="Insecure","login"]
