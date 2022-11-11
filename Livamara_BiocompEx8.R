# Question 1
#Number of lines wanted from file
num_lines = 4

#desired file to be read
iris= read.csv("~/Desktop/Biocomputing_Ex8/iris.csv")

#equivalent of head function and returns variable
topNLines = iris[1:num_lines,]

#prints output
print(topNLines)

# Question 2

# Print last two rows and columns
tail(iris, n=2)[-3:-1]

# number of species observed in data set
table(iris$Species)

# shows flowers with Sepal length > 3.5
iris[which(iris$Sepal.Width>3.5),]

# Pt1 data for the species setosa to a dataset setosa
setosa<-iris[iris$Species=='setosa',] 

#P2 data for setosa put into csv file "setosa.csv"
write.csv(setosa, "setosa.csv")
read.csv("setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica= subset(iris, Species == "virginica")
print("Mean petal length for virginica: ")
print(mean(virginica[["Petal.Length"]]))
print("Min petal length for virginica: ")
print(min(virginica[["Petal.Length"]]))
print("Max petal length for virginica: ")
print(max(virginica[["Petal.Length"]]))
