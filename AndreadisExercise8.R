## Biocomputing - Exercise 8
## Early Days of R 
## 9 November 2022 - Catherine Andreadis 

#-------------------------------------------------------------------------------


#Set working directory 
getwd()
setwd("/Users/catherineandreadis/Desktop/biocomputing/Exercise_8/Exercise_8")
list.files()


#1. Write R code that replicates the functionality of the head function we used 
# in bash. Your code should define a variable with the file to return lines from
# and a variable representing the number of lines to be returned from the top 
# of the indicated file. The selected file content should be printed to the 
# terminal in R. 

##load in data to practice with, in this case I chose the iris dataset 
iris <- read.csv("iris.csv", header = TRUE, sep = ",")
head(iris)

##choose how many lines you would like to print (you can define this as your variable)
variable=10 #(this can be any number of lines)
subsetIris <- iris[1:variable,]

##print your data
print(subsetIris) #this would be whatever you chose to name your dataframe



#2. Load the data contained in the provided 'iris.csv' file and write R 
# code to do the following: 


##Load the data set 
iris <- read.csv("iris.csv", header = TRUE, sep = ",")
head(iris)

#2a. Print the last 2 rows and 2 columns to R 

##First get the dimensions of the dataset so we know how many rows there are ,
## so we can specify which rows to pull

dim(iris)
#from the output we can see there are 150 rows, so we want to pull rows 149 and 
# 150

## Subsetting the rows and columns 
tail_iris <- iris[149:150, 4:5]
print(tail_iris)


#2b. Get the number of observations for each species in the dataset 
library(dplyr)

iris %>% count(Species)

#Or in Base R

xtabs(~ Species, data = iris)

#2c. Get rows with Sepal.Width > 3.5
SepalWidth_subset <- iris[iris$Sepal.Width > 3.5,]

#2d. Write the data for species Setosa to a csv called setosa.csv

##filter data set so it only contains observations for setosa 

setosa<- iris[iris$Species == "setosa",]
print(setosa)

##write "setosa" to a csv file 

write.csv(setosa, file = "setosa.csv")


#2e. Calculate the mean, minimum, and maximum of Petal.Length observations from 
# virginica 


##filter data set so it only contains observations for Virginica 

Virginica <- iris[iris$Species == "virginica",]
print(Virginica)

##Calculate the mean of Petal.Length from the Virginica dataset 
mean (Virginica$Petal.Length)

## Calculate the minimum of Petal.Length from the Virginica dataset  
min(Virginica$Petal.Length)

## Calculate the maximum of Petal.Length from the Virginica dataset 
max(Virginica$Petal.Length)
