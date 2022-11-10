# Exercise 8

## Problem 1:

# variable with the file to search lines in:

file_to_return_lines <- read.csv(file = "filename")

# example with iris.csv
#file_to_return_lines <- read.csv(file = "iris.csv")

# variable with the number (non negative integer) of lines to be returned

num_of_lines <- #number of lines to be returned
  
#example with random number of lines
#num_of_lines <- 5
  
# function that acts like head in bash:
  
file_to_return_lines[0:num_of_lines,]


# Problem 2
# read in iris.csv

iris_data <- read.csv(file = 'iris.csv', sep = ',')

# part a: last 2 rows in the last 2 columns

iris_data[149:150,4:5]

# part b: numbers of observations for each species

# number of observations by species

setosa_obs <- sum(iris_data$Species=="setosa")
versicolor_obs <- sum(iris_data$Species=="versicolor")
virginica_obs <- sum(iris_data$Species=="virginica")

# data frame that contains the summary of species and their number of observations

obs_species <- data.frame(species = c("setosa", "versicolor","virginica"), 
                          num_of_obs = c(setosa_obs,versicolor_obs,virginica_obs))
print(obs_species)

# part c: rows with Sepal.Width >= 3.5

rows_sepal.width_3.5 <- iris_data[iris_data[,2]>=3.5,]
print(rows_sepal.width_3.5)

# part d: data of setosa to comma-delimited file "setosa.csv"

setosa_data <- iris_data[iris_data[,5]=="setosa",]
write.table(setosa_data, file = "setosa.csv", sep = ",")

# part e: mean, min, and max of Petal.Length for virginica

# Separate data for virginica species

virginica_data <- iris_data[iris_data[,5]=="virginica",]
mean_petal.length_virg <- mean(virginica_data$Petal.Length)
min_petal.length_virg <- min(virginica_data$Petal.Length)
max_petal.length_virg <- max(virginica_data$Petal.Length)

calc_virg <- data.frame(measure=c("mean", "minimum", "maximum"), 
                        values=c(mean_petal.length_virg,min_petal.length_virg,max_petal.length_virg))
print(calc_virg)

