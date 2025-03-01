install.packages("proton")
library(proton)
proton()

"Pietraszko uses a password which is very difficult to guess.
At first, try to hack an account of a person which is not as cautious as Pietraszko.

But who is the weakest point? Initial investigation suggests that John Insecure doesn't care about security and has an account on the Proton server. He may use a password which is easy to crack.
Let's attack his account first!
  
  Problem 1: Find the login of John Insecure.

Bit has scrapped 'employees' data (names and logins) from the www web page of Technical University of Warsaw. The data is in the data.frame `employees`. 
Now, your task is to find John Insecure's login.
When you finally find out what John's login is, use proton(action = "login", login="XYZ") command, where XYZ is Insecure's login."

df <- `employees`
str(df)
df[df$surname == "Insecure", "login"]
proton(action = "login", login="johnins")


# Congratulations! You have found out what John Insecure's login is!
# It is highly likely that he uses some typical password.
# Bit downloaded from the Internet a database with 1000 most commonly used passwords.
# You can find this database in the `top1000passwords` vector.
# 
# Problem 2: Find John Insecure's password.
# 
# Use `proton(action = "login", login="XYZ", password="ABC")` command in order to log into the Proton server with the given credentials.
# If the password is correct, you will get the following message:
# `Success! User is logged in!`.
# Otherwise you will get:
# `Password or login is incorrect!`.

proton(action = "login", login="johnins", password= "1000L") 

passwords <- `top1000passwords`

for (i in 1:1000) {
  x <- proton(action = "login", login="johnins", password= i)
  if (x == "Success! User is logged in!")
    print(i)
    break
}
