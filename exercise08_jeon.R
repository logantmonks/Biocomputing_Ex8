# hjeon
# Biocomputing Exercise 08
# Question 1
setwd("/Users/hyesooclarejeon/") # set working directory
# define function for alternative head
alt_head <- function(fileName, numLines) {
  parsed <- read.csv(file=fileName, nrows=numLines, header=FALSE) # store file data by new line to parsed
  parsed
}

alt_head("iris.csv", 5)

# Question 2
iris_data <- read.csv(file="iris.csv", header=TRUE) # store file data by new line to iris_data
iris_data_truncated <- read.csv(file="iris.csv", skip=149, header=FALSE) # store file data by new line to iris_data_truncated with last 2 rows
iris_data_truncated[4:5] # last 2 columns of iris_data printing to terminal

unique(unlist(iris_data[5:5])) # get unique species name and print to console
length(unique(unlist(iris_data[5:5]))) # count unique species

subset(iris_data, Sepal.Width > 3.5) # get rows with Sepal.Width > 3.5

setosa_rows <- subset(iris_data, Species=="setosa") # store setosa rows filtered through subset
write.table(x=setosa_rows, file="setosa.csv", sep=",") # write this subset to setosa.csv with comma delimiter

petal_lengths <- unlist(iris_data["Petal.Length"])
mean(petal_lengths)
min(petal_lengths)
max(petal_lengths)
