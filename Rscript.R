Biocomputing_Ex8_Fernandez
#Problem 1
#Open data file
data<-read.table(file="wages.csv",header=TRUE)
#Variable for first 5 wages of data file
first5wages<-data[1:5,]
first5wages

#Problem 2
#Open and load data
data1<-read.csv(file="iris.csv",header=TRUE)
#Print the last 2 rows
n<-nrow(data1)
m<-ncol(data1)
last2rowscolumns<-data1[(n-1):n,(m-1):m]
last2rowscolumns
#Number of species count
table(data1[,5])
#Rows of Sepal.Width over 3.5
sum(data1$Sepal.Width>3.5)
#CSV for setosa
df<-read.csv("iris.csv", header=TRUE)
a<-df[c(2:50),]
print(a)
write.csv(a,"C:\\Users\\natal\\Desktop\\shell-lesson-data\\shell-lesson-data\\exercise-data\\bioComputingEx8\\Biocomputing_Ex8\\setosa.csv")
read.csv("setosa.csv")
#Find mean, max, min of Petal.Length virginica
virginica<-data1[data1$Species=="virginica",]
min_Petal.Length<-min(virginica$Petal.Length)
max_Petal.Length<-max(virginica$Petal.Length)
mean_Petal.Length<-mean(virginica$Petal.Length)
print(min_Petal.Length)
print(max_Petal.Length)
print(mean_Petal.Length)

