# Exercise08_PeterMartin.R

setwd("~/Desktop/Rfiles/Biocomputing/Biocomputing_Ex8")

##### Problem 1
# Write R code that replicates the functionality of the head function we used in bash. 
# Your code should define a variable with the file to return lines from and a variable representing the number
# of lines to be returned from the top of the indicated file. The selected file content should be printed to 
# the terminal in R. Do not use the head function in R. 
# Be sure you are using square bracket indexing to subset the tabular file.

var1 <- read.csv("wages.csv", header=TRUE) # variable containing the file to return lines from
nlines <- 3 # variable representing the number of lines to be returned from the top of the file

head_fxn <- var1[1:nlines,]
head_fxn

##### Problem 2
# Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
# (a) print the last 2 rows in the last 2 columns to the R terminal
# (b) get the number of observations for each species included in the data set
# (c) get rows with Sepal.Width > 3.5
# (d) write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
# (e) calculate the mean, minimum, and maximum of Petal.Length for observations from virginica

iris <- read.csv("iris.csv", header=TRUE)
# part (a)
tail(iris, n=c(2,2))

# part (b)
species <- unique(iris$Species)
n_observ <- dim(iris[iris$Species==species[1],])
print(paste("The number of observations for",species[1],"is: ",n_observ[1]))
n_observ <- dim(iris[iris$Species==species[2],])
print(paste("The number of observations for",species[2],"is: ",n_observ[1]))
n_observ <- dim(iris[iris$Species==species[3],])
print(paste("The number of observations for",species[3],"is: ",n_observ[1]))

# part (c)
iris[iris$Sepal.Width > 3.5,]

# part (d)
setosa <- iris[iris$Species=="setosa",]
write.table(x=setosa,file="setosa.csv",sep=",",quote=F,row.names = FALSE)

# part (e)
virginica <- iris[iris$Species=="virginica",]
mean_virginica <- mean(virginica$Petal.Length)
print(paste("The mean petal length for virginica is: ",mean_virginica))
min_virginica <- min(virginica$Petal.Length)
print(paste("The minimum petal length for virginica is: ",min_virginica))
max_virginica <- max(virginica$Petal.Length)
print(paste("The maximum petal length for virginica is: ",max_virginica))
