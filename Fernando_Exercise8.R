#Question 1
#Set working directory
setwd("~/Desktop/Biocomputing /Exercises/Biocomputing_Ex8")

#read in the tabular file 
Final <- read.table("Final.txt",header=TRUE, sep="\t", stringsAsFactors=FALSE)

#select and print the number of lines to be returned from the top 
variable= 10 
head_of_Final <- Final[1:variable,]
print(head_of_Final)

#Question 2
#Load the data contained in the provided ‘iris.csv’ file 
setwd("~/Desktop/Biocomputing /Exercises/Biocomputing_Ex8")
iris <- read.csv("iris.csv",header = TRUE, stringsAsFactors = FALSE)

# extract and print last 2 rows in the last 2 columns from the data frame
print(iris[(dim(iris)[1]-1) : (dim(iris)[1]), (dim(iris)[2]-1) : (dim(iris)[2])])

# get the number of observations for each species included in the data set
Uniquespecies <- table(as.factor(iris$Species))

print(Uniquespecies)

#get rows with Sepal.Width > 3.5
Sepalwidth <- iris[iris$Sepal.Width>3.5,]
print(Sepalwidth)

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa, file = "setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- iris[iris$Species=="virginica",]

MeanPetalLength <- mean(virginica$Petal.Length) 
#or
print(c("The mean petal length of virginica is",mean(virginica$Petal.Length)))

MinPetaLength <- min(virginica$Petal.Length) 
#or
print(c("The minimum petal length of virginica is",min(virginica$Petal.Length)))

MaxPetaLength <- max(virginica$Petal.Length) 
#or
print(c("The maximum petal length of virginica is",max(virginica$Petal.Length)))


