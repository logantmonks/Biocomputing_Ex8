# Brandon Barnacle
# Exercise 8
# These problems assume you are in the Biocomputing_Ex8 folder(it is your working dir)

# Problem 1
# this variable is for the file you are reading in, you need to change file name and
# separator depending on the type of file
the_file<-read.table("file.txt", header=FALSE, sep="\t", stringsAsFactors=FALSE)
# this variable is for the number of lines you want
lines_wanted<-6
# this gets rid of the column names to make it look more like that file
colnames(the_file)<-NULL

print(the_file[1:lines_wanted,], row.names=FALSE)

# Problem 2
iris<-read.csv(file="iris.csv", header=TRUE)
cols<-ncol(iris)
rows<-nrow(iris)

# a
print(iris[(rows-1):rows,(cols-1):cols])

# b
species<-unique(iris[,5])

for (i in species) {
  print(paste(i, ":" , as.character(length(which(iris[,5]==i)))))
}

# c
print(iris[iris$Sepal.Width>3.5,], row.names=FALSE)

# d
setosa<-iris[iris$Species=="setosa",]
write.table(setosa, file="setosa.csv", sep=",", row.names=FALSE)

# e
print(paste("Mean Petal Length for Virginica is:", mean(iris[iris$Species=="virginica",]$Petal.Length)))
print(paste("Min Petal Length for Virginica is:", min(iris[iris$Species=="virginica",]$Petal.Length)))
print(paste("Max Petal Length for Virginica is:", max(iris[iris$Species=="virginica",]$Petal.Length)))