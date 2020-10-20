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

### Built in data sets
# see list of pre-loaded data sets
data()

### loading in data
# gtdata package has support for reading in excel files
install.packages('gdata')

require(gdata)
# or 
library(gdata)

# path to SPD data (path from current working directory which is R_learning)
spd_dpath = '../tableau_data/SPD_Officer_Involved_Shooting__OIS__Data.csv'

# use built in read.csv R syntax to read file
spd_data = read.csv(spd_dpath, header=TRUE, stringsAsFactors=FALSE)

head(spd_data)

# view data.frame internal structure including dtype
str(spd_data)

# datasets package contains some data to use
help(datasets)

# :: means we are using the chickwts function, or module, or _something_ from the datasets package
chickwts <- datasets::chickwts

barplot(chickwts$weight, chickwts$feed)
# strings in 'feed' category are note dtype of 'factor'
# 'factor' is the R categorical datatype

# change column dtype
chickwts$feed <- as.factor(chickwts$feed)

plot(chickwts$weight, chickwts$feed)


