#imie nazwisko, bez polskich znakow, wgrac pliki w fork 
install.packages("proton")
library(proton)
proton()
#gra, probujemy ja rozwiazac
employees
employees[employees$name == "John" & employees$surname == "Insecure", "login"]
proton(action = "login", login="johnins")
top1000passwords 
length(top1000passwords)
top1000passwords[1]
proton(action = "login", login="johnins", password=top1000passwords[1]) != 'Password or login is incorrect'
print(top1000passwords[3])
for (i in 1:length(top1000passwords)) {
  if (proton(action = "login", login="johnins", password=top1000passwords[i]) != 'Password or login is incorrect') {
    print(top1000passwords[i])
    break
  }
}
