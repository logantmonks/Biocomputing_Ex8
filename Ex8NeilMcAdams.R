#1. Write R code that replicates the functionality of the head function we used in bash. Your code should
#define a variable with the file to return lines from and a variable representing the number of lines to be
#returned from the top of the indicated file. The selected file content should be printed to the terminal
#in R. Do not use the head function in R. Be sure you are using square bracket indexing to subset the
#tabular file.
#===============================================================================
#usage ex8Head(filename, number of lines you want)
ex8Head <- function(filename, lines) {
  filename[1:lines,]
}
#===============================================================================
#2. Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
#• print the last 2 rows in the last 2 columns to the R terminal --
#• get the number of observations for each species included in the data set --
#• get rows with Sepal.Width > 3.5
#• write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
#• calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
iris<-read.csv(file="iris.csv", header=TRUE)

#• print the last 2 rows in the last 2 columns to the R terminal
iris[149:150,4:5]

#• get the number of observations for each species included in the data set
table(iris[,5])

#get rows with Sepal.Width > 3.5
bigsepal<-iris[iris$Sepal.Width >3.5,]; bigsepal

#• write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
write.table(setosa,
            "setosadata.csv",
            col.names=TRUE,
            row.names=FALSE,
            sep=",",)
#• calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica=iris[iris$Species=="virginica",]; print("Min"); min(virginica$Petal.Length); print("Max"); max(virginica$Petal.Length); print("Mean"); mean(virginica$Petal.Length)
#or just use summary and only take the things you care about?




