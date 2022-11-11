#BIOCOMPUTING EXERCISE 8 WOLF
#1.Write R code that replicates the functionality of the head function in bash
#Code should define a variable with the file to return lines from and a variable representing the number of lines to be
#returned from the top of the indicated file
#The selected file should be printed to terminal in R
setwd("~/Biocomputing/Biocomputing_Ex8")

#subset top 5 rows with however many columns needed
wages<-read.csv("wages.csv",header=TRUE, sep = ",")
Nrows<-dim(wages)[1]
top5Rows<-wages[(Nrows[1:5,]:Nrows)]

#or

irisrow<-nrow(iris)
head<-iris[1:(irisrow),]

#2. Load the data in the iris.csv file and write R code to do the following:

#load data
iris<-read.csv("iris.csv",header=TRUE, sep = ",")

#print the last 2 rows in the last 2 columns to the R terminal
dim(iris)
print(c(iris[149:150,4:5,]))

#get the number of observations for each species included in the data set
virginicaObs<-sum(iris$Species=="virginica")
versicolorObs<-sum(iris$Species =="versicolor")
setosaObs<-sum(iris$Species=="setosa")

#get rows with Sepal.Width >3.5 
sepalWidth<-sum(iris$Sepal.Width>3.5)

#write the data for the species setosa to a comma-delimited file named "setosa.csv"
setosaOnly<-data.frame(iris[1:50,])
setosaData<-write.table(x=setosaOnly,file="setosa.csv", sep=",", quote=F)

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
vPetal<-iris[101:150,3]
vMax<-max(vPetal)
vMin<-min(vPetal)
vMean<-mean(vPetal)
