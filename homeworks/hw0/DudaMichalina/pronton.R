install.packages("proton")
library(proton)
proton()

#Problem 1: Find the login of John Insecure.

#Bit has scrapped 'employees' data (names and logins) from the www web page of Technical University of Warsaw. The data is in the data.frame `employees`. 
#Now, your task is to find John Insecure's login.
#When you finally find out what John's login is, use `proton(action = "login", login="XYZ")` command, where XYZ is Insecure's login.

employees
result <- employees[employees$name == "John", ]
result

proton(action = "login", login="johnins")

#Congratulations! You have found out what John Insecure's login is!
#It is highly likely that he uses some typical password.
#Bit downloaded from the Internet a database with 1000 most commonly used passwords.
#You can find this database in the `top1000passwords` vector.

#Problem 2: Find John Insecure's password.
#Use `proton(action = "login", login="XYZ", password="ABC")` command in order to log into the Proton server with the given credentials.
#If the password is correct, you will get the following message:
#`Success! User is logged in!`.
#Otherwise you will get:
#`Password or login is incorrect!`.

top1000passwords

for (i in top1000passwords) {
  result <- proton(action = "login", login = "johnins", password = i)
  if (grepl("Success! User is logged in!", result)) {
    print(paste("John's password:", i))
    break
  }
}

#[1] "John's password: q1w2e3r4t5"
#Well done! This is the right password!
 # Bit used John Insecure's account in order to log into the Proton server.
#It turns out that John has access to server logs.
#Now, Bit wants to check from which workstation Pietraszko is frequently logging into the Proton server. Bit hopes that there will be some useful data.  

#Logs are in the `logs` dataset. 
#Consecutive columns contain information such as: who, when and from which computer logged into Proton.

#Problem 3: Check from which server Pietraszko logs into the Proton server most often.

#Use `proton(action = "server", host="XYZ")` command in order to learn more  about what can be found on the XYZ server.
#The biggest chance to find something interesting is to find a server from which Pietraszko logs in the most often.

logs
login_pietraszko <- employees[employees$surname == "Pietraszko", ]
login_pietraszko
dataframe<-logs[logs$login == "slap", ]
dataframe

liczba_hostow <-table(dataframe$host)
najczęstszy_host<-names(liczba_hostow)[which.max(liczba_hostow)]
najczęstszy_host

proton(action = "server", host="194.29.178.16")

#It turns out that Pietraszko often uses the public workstation 194.29.178.16.
#What a carelessness.
#Bit infiltrated this workstation easily. He downloaded `bash_history` file which contains a list of all commands that were entered into the server's console.
#The chances are that some time ago Pietraszko typed a password into the console by mistake thinking that he was logging into the Proton server.
#Problem 4: Find the Pietraszko's password.
#In the `bash_history` dataset you will find all commands and parameters which have ever been entered.
#Try to extract from this dataset only commands (only strings before space) and check whether one of them looks like a password.
bash_history
lista_potencjalnych_haseł <-bash_history[!grepl(" ", bash_history)]
lista_potencjalnych_haseł
unique(lista_potencjalnych_haseł)
proton(action = "login", login="slap", password="pwd")
proton(action = "login", login="slap", password="ps")
proton(action = "login", login="slap", password="whoiam")
proton(action = "login", login="slap", password="top")
proton(action = "login", login="slap", password="mc")
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")

#You have cracked Pietraszko's password!
#Secret plans of his lab are now in your hands.
#What is in this mysterious lab?
#You may read about it in the `Pietraszko's cave` story which is available at http://biecek.pl/BetaBit/Warsaw
#Next adventure of Beta and Bit will be available soon.
#proton.login.pass 
#"Success! User is logged in!" 
