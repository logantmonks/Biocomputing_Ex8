setwd("~/Desktop/Notre Dame/Courses S1/Biocomputing/R stuff/Biocomputing_Ex8")
# Part 1
# Code:
# x defines the file we want to look at 
x <- read.csv("iris.csv")
# Y defines the number of rows we want to view
y <- 10
# Viewing the first 10 rows:
FirstRows <- x[1:y,]
FirstRows

# Part 2
# Print the last 2 rows in the last 2 columns of iris
iris <- read.csv("iris.csv")
nrow(iris)
ncol(iris)
iris[149:150,4:5]

# Number of observations for each species in the data set
species <- unique(iris$Species)
setosa <- iris[iris$Species=="setosa",]
versicolor <- iris[iris$Species=="versicolor",]
virginica <- iris[iris$Species=="virginica",]
nrow(setosa)
nrow(versicolor)
nrow(virginica)

# Get rows with Sepal.Width over 3.5
large.sepal.width <- iris[iris$Sepal.Width>3.5,]
large.sepal.width

# Write the data for the species setosa to a csv file 
write.csv(setosa,"setosa.csv")
read.csv("setosa.csv")

# Calculate mean, minimum, and maximum of Petal.Length for virginica plants
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
