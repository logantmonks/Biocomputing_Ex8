#1. Write R code that defines a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file.The seleced fike content should be printed to the terminal in R.
#Step 1: define variable of the file to return
file=read.csv("iris.csv")
file
#Define lines to return.
lines=2
headFile=file[(1:lines),]
headFile

#2. Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
iris=read.csv("iris.csv")
#a. print the last 2 rows in the last 2 columns to the R terminal
dim(iris)
iris[(149:150),(4:5)]
#b. get the number of observations for each species included in the data set
table(as.factor(iris$Species))
#c. get rows with Sepal.Width > 3.5
rows3.5<-iris[(iris$Sepal.Width>3.5),]
#d. write the data for the species setosa to a comma-delimited file names ‘setosa.csv’ 
setosa<-iris[iris$Species=='setosa',]
write.csv(setosa,file='setosa.csv',sep=',', rownames=FALSE)
#e. calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica<-iris[iris$Species=='virginica',]
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
