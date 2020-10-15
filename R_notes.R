### BASIC OBJECT TYPES

# Vector
name <- c("Mike", "Lucy", "John")

age <- c(20, 25, 30)

# Array & Matrix
x <- matrix(c(1,2,3,4), nrow=2, ncol=2)

x

x <- matrix(c(1,2,3,4), nrow=2, ncol=2, byrow=TRUE)

x

# List
y <- list(name="Mike", gender="M", company="Amazon")

y[1]
y["name"]

y[3]
y["company"]

# Data Frame
name <- c("Mike", "Lucy", "John")
age <- c(20, 22, 19)
student <- c(TRUE, FALSE, TRUE)

df = data.frame(name, age, student)

df

