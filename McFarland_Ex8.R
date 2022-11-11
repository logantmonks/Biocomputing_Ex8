# Troy McFarland Exercise 8

# 1) write code to perform "head" functionality from bash

# declare numLines variable for however many lines needed from "top" of file
numLines <- 3

# store iris.csv in environment
iris <- read.csv("iris.csv")

# print result of "head" code. in [], [row, column] and we only want row so leave second term empty ([something,])
iris[1:numLines,]

# 2) 

# a) print last two rows in last two columns of iris.csv

iris[149:150,4:5] 

# or to be more general, so that variable file2a can be set to any dataframe to return its last 2 rows and last 2 columns

file2a <- iris
file2a[(nrow(file2a)-1):(nrow(file2a)),(length(file2a)-1):(length(file2a))]

# b) get number of observations for each species

table(iris$Species)

# c) get rows with Sepal.Width > 

# for loop iterates through all rows of iris, while nested if statement finds rows with Sepal.Width > 3.5
for (x in 1:nrow(iris)) {
if (iris[x,2] > 3.5) {
print(iris[x,])
}
} 

# d) write data for the species "setosa" to a csv "setosa.csv"

# iris[iris$Species=='setosa',] finds all rows with species setosa. the file is named, and the row.names term eliminates a column of row numberings from the resulting csv
write.csv(iris[iris$Species=='setosa',], file = "setosa.csv", row.names = FALSE)

# e) calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

# store virginica rows
virginica <- iris[iris$Species=='virginica',]
#find mean, min, and max of column 3, or Petal.Length, of virginica.
mean(virginica[,3])
min(virginica[,3])
max(virginica[,3])
