#Biocomputing Ex 8 - Sara Bennett

#Part 1 - Head Function
#read in data, using Iris for example
iris <- read.csv("iris.csv", header = TRUE)

#determine # of rows that the header will read, in this case I chose top 10
numRows <- 10 

#create the "head function" by indexing the file
header <- iris[1:numRows,]

header


#Part2
#read in data file
iris <- read.csv("iris.csv", header = TRUE)
iris

#a - last 2 rows in last 2 columns
#determined that the file has 150 rows and 5 columns, so index by the last 2, in this case 149-150 and 4-5
iris[149:150,4:5] 

#b - observations for each species
#use the sum function on the values that match each species type
sum(iris$Species == "setosa")
sum(iris$Species == "versicolor")
sum(iris$Species == "virginica")

#c - rows with sepal width >3.5
#index the rows by specifying the values of sepal width > 3.5
 iris[iris$Sepal.Width>3.5,]

#d - setosa csv
#separate out the species Setosa data (similar to part b) and write to csv file
 setosa <- iris[iris$Species == "setosa",]
 write.csv(setosa, file = "setosaData.csv")
 
#e - mean/min/max petal length virginica
 #separate out the virginica data
 virginica <- iris[iris$Species=="virginica",]
 #use mean/min/max functions on the separated virginica data, specifically filtering for petal length
 mean(virginica$Petal.Length)
 min(virginica$Petal.Length)
 max(virginica$Petal.Length)
 
 