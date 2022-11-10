#### Biocomputing Exercise 8 ----
### Isaac Loutzenhiser 

##Q1: Replicate the head function in bash in order to subset the required data from a vector and file of our choice. Here I used the file "Monkeys".
first10 <- Monkeys[1:10,]

##Q2: Reading the iris.csv and view the data frame 
iris<-read.csv("iris.csv")
View(iris)

# Last two rows of the last two columns 
iris[149:150,4:5]

# Number of observations for the number of species contained in the data frame
unique(iris$Species)
unique(iris[iris$Species == "setosa",])
unique(iris[iris$Species == "versicolor",])
unique(iris[iris$Species == "virginica",])

# Rows with sepal widths greater than 3.5
sepalwidths<-iris[iris[,2]>3.5,]

# Writing the data for the species setosa to a .csv file named setosa.csv
setosa<-iris[iris$Species=="setosa",]
write.table(x=setosa,file = "setosa.csv", row.names = FALSE, col.names=TRUE, sep =",")

# Calculate the mean, maximum, and minimum of the petal lengths for virginica 
# First isolate virginica into its own object
virginica<-iris[iris$Species=="virginica",]
#Then find the column devoted to Petal.Lengths
virginicaPetalLength<-virginica[,3]
# Then begin doing the analytical computations 
mean(virginicaPetalLength)
min(virginicaPetalLength)
max(virginicaPetalLength)