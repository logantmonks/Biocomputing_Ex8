#Author:Zhuoran Yu
#Script for Ex8

#Q1. Write R code that replicates the functionality of the head function we used in bash. 
#Your code should define a variable with the file to return lines from and a variable representing 
#the number of lines to be returned from the top of the indicated file. The selected file content 
#should be printed to the terminal in R. Do not use the head function in R. 
#Be sure you are using square bracket indexing to subset the tabular file.

#set working directory
setwd("/Users/your_folder")
#read in the tabular file you want to work with
sample_data <- read.table("sample_data.txt", header=TRUE, sep="\t", stringsAsFactors=FALSE)
#select and print the data, here I chose the first 5 lines, but you can switch the 5 to any number of lines you want 
variable= 5 #"the lines of number you want" 
head_of_sample_data <- sample_data[1:variable,]
print(head_of_sample_data)

#Q2. Load the data contained in the provided ‘iris.csv’ file
setwd("/Users/zhuoranyu/Biocomputing_Ex8")
iris <- read.csv("iris.csv", header=TRUE, stringsAsFactors=FALSE)

#print the last 2 rows in the last 2 columns to the R terminal
print(iris[(dim(iris)[1]-1):dim(iris)[1],(dim(iris)[2]-1):dim(iris)[2]])

#get the number of observations for each species included in the data set
table(as.factor(iris$Species))

#get rows with Sepal.Width > 3.5
speal_width_wide <- iris[iris$Sepal.Width >3.5,]

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa,"setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- iris[iris$Species=="virginica",]
print(c("The mean for Petal.Length of virginica is",mean(virginica$Petal.Length)))
print(c("The minimum for Petal.Length of virginica is",min(virginica$Petal.Length)))
print(c("The maximum for Petal.Length of virginica is",max(virginica$Petal.Length)))

