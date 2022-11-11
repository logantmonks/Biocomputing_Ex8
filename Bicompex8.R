#question1: 
#variable (ex. iris) with the file to return lines from (ex. "iris.csv")
iris<-read.table("iris.csv", header=TRUE, sep=",")
#variable representing the number of lines (ex.[1:5,]) returned from the top of the file
#may replace 5 in the subset with any number to return that many lines from the top of the file  
firstfivelines<-iris[1:5,]

#question2:
#load the data contained in "iris.csv" file 
iris<-read.table("iris.csv", header=TRUE, sep=",")

#print the last 2 rows in the last 2 columns
part1<-iris[149:150,4:5]

#number of observations for each species in the data set
#identify unique species types
unique(iris[,5])
setosacount<-nrow(iris[which(iris$Species=="setosa"),])
versicolorcount<-nrow(iris[which(iris$Species=="versicolor"),])
virginicacount<-nrow(iris[which(iris$Species=="virginica"),])

#rows with sepal,width>3.5
part3<-iris[which(iris$Sepal.Width>3.5),]

#csv file "setosa.csv" containing data for species setosa
setosa.csv<-iris[which(iris$Species=="setosa"),]

#data for virginica species observations
virginica<-iris[which(iris$Species=="virginica"),]
# variable containing Petal.Length minimum value for virginica species observations
minimum<-min(virginica$Petal.Length)
# variable containing Petal.Length mean value for virginica species observations
mean<-mean(virginica$Petal.Length)
# variable containing Petal.Length maximum value for virginica species observations
Maximum<-max(virginica$Petal.Length)

