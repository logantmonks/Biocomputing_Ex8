# Exercise 8
# this script must be run in Biocomputing_Ex8 directory

# problem 1

file<-read.table("newfile.txt", header=FALSE, sep='\t', stringsAsFactors=FALSE)
colnames(file)<-NULL
num_lines<-10
print(file[1:num_lines,])

# problem 2
irisfile<-read.csv(file="iris.csv", header=TRUE)

#this gets the number of rows and columns in iris.csv
num_cols<-ncol(irisfile)
num_rows<-nrow(irisfile)

# print the last 2 rows in the last 2 columns to the R terminal
print(irisfile[(num_rows-1):num_rows,(num_cols-1):num_cols])

# get the number of observations for each species included in the data set
obs<-unique(irisfile[,5])
for (iter in obs){
  print(paste(iter, ' ' , as.character(length(which(irisfile[,5]==iter))), 'observations'))
}

# get rows with Sepal.Width > 3.5
print(irisfile[irisfile$Sepal.Width>3.5,])

# write the data for the species setosa to a comma-delimited file named 'setosa.csv'
setosafile<-irisfile[irisfile$Species=='setosa',]
write.table(setosafile, file='setosa.csv', sep=',')

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
print(paste('Virginica mean petal length:', mean(irisfile[irisfile$Species=='virginica',]$Petal.Length)))
print(paste('Virginica minimum petal length:', min(irisfile[irisfile$Species=='virginica',]$Petal.Length)))
print(paste('Virginica maximum petal length:', max(irisfile[irisfile$Species=='virginica',]$Petal.Length)))