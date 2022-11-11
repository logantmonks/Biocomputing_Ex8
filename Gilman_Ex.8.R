#Question 1

#set working directory
setwd("~/Desktop/biocomputing")

#read csv
iris <- read.csv("iris.csv", header=TRUE)

#defines file to return and line to return
file_to_return <- read.csv("iris.csv",header = TRUE)
lines_to_return <- 15
#prints first few rows of the file based on desired line number
file_to_return[1:lines_to_return,]


#Question 2

nrow(iris)
ncol(iris)

#print the last 2 rows in the last 2 columns to the R terminal
iris[149:150,4:5]

#get the number of observations for each species included in the data set
iris %>% group_by(Species) %>% tally()

#get rows with Sepal.Width > 3.5
iris2 <- subset(iris, Sepal.Width > 3.5)
iris2  

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa.csv <- subset(iris, Species == 'setosa')
setosa.csv

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- subset(iris, Species == 'virginica')
virginica
mean(virginica$Petal.Length)
