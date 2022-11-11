# Question Number 2 for Ex8
# Hugh Smith
# 11/10/22

# print the last 2 rows in the last 2 columns to the R terminal
iris= read.csv("~/biocomputing/Biocomputing_Ex8/iris.csv")
tail(iris, n=2)[-3:-1]

# get the number of observations for each species included in the data set
table(iris$Species)

# get rows with Sepal.Width > 3.5
subset(iris, Sepal.Width > 3.5)

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa = subset(iris, Species == "setosa")
write.table(setosa, '~/biocomputing/BioComputing_Ex8/setosa.csv', sep = ',')

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica = subset(iris, Species == "virginica")
print("Mean petal length for virginica: ")
print(mean(virginica[["Petal.Length"]]))
print("Min petal length for virginica: ")
print(min(virginica[["Petal.Length"]]))
print("Max petal length for virginica: ")
print(max(virginica[["Petal.Length"]]))