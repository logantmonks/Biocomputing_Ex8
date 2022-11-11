#set working directory correctly
setwd("~/Desktop/BCTutorials/Biocomputing_Ex8/")

#1
#define variable with file to return lines from
iris <- read.csv("iris.csv")
#define variable with number of lines to be returned from top of file
lines <- 3
#square bracket indexing that returns top 3 rows like head function
iris[1:lines,]

#2
#data already loaded from iris.csv into iris

#define variables rows and columns of the file
rows=nrow(iris)
columns=ncol(iris)
#print last two rows and two columns using square bracket indexing
iris[c(rows-1):rows,c(columns-1):columns]

#table containing number of observations for each species
table(iris$Species)

#print rows containing rows with Sepal Width > 3.5
iris[iris$Sepal.Width > 3.5,]

# write setosa data to csv
write.csv(iris[iris$Species=="setosa",],file = "~/Desktop/BCTutorials/Biocomputing_Ex8/setosa.csv")

#define variables for mean, min, max of virginica petal length
virginica_pl_mean <- mean(iris[iris$Species=="virginica",]$Petal.Length)
virginica_pl_min <- min(iris[iris$Species=="virginica",]$Petal.Length)
virginica_pl_max <- max(iris[iris$Species=="virginica",]$Petal.Length)
#print each variable
virginica_pl_mean 
virginica_pl_min 
virginica_pl_max
