## Intro to Biocomputing Exercise 8
## Clayton Glasgow 4 November 2022

## Problem 1

# define variable with file to return lines from
wages <- read.csv("wages.csv")
# define variable with number of lines to be returned from top of wages
lines=1:5
# use wages + lines to replicate functionality of "head" in bash
wages[lines,]

## Problem 2

# load iris.csv data
iris <- read.csv("iris.csv")

# print last 2 rows in the last 2 columns to R terminal
# first, find number of rows, columns
rows=nrow(iris)
cols=ncol(iris)
# use these variables to subset iris dataset
iris[c(rows-1):rows, c(cols-1):cols]

# find number of observations for each species included in the dataset
# first, identify which species are present
different_species <- unique(iris$Species)
different_species
# three species present: setosa, versicolor, virginica
# find number of observations of each species
total_setosa = sum(iris$Species=="setosa")
total_setosa # = 50
total_versicolor = sum(iris$Species=="versicolor")
total_versicolor # = 50
total_virginica = sum(iris$Species=="virginica")
total_virginica # = 50

# find rows with Sepal.Width > 3.5
wide_sepals <- iris[iris$Sepal.Width > 3.5,]
wide_sepals

# write data for species "setosa" to "setosa.csv"
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa, "~/Desktop/IntroBiocomputing/R/Biocomputing_Ex8/setosa.csv")

# calculate mean, min, max of Petal.Length for observations from "virginica"
virginica_mean <- mean(iris[iris$Species=="virginica",]$Petal.Length)
virginica_mean # = 5.552
virginica_min <- min(iris[iris$Species=="virginica",]$Petal.Length)
virginica_min # = 4.5
virginica_max <- max(iris[iris$Species=="virginica",]$Petal.Length)
virginica_max # = 6.9



