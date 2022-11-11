#Biocomputing Exercise-8

#part 1
#write R code that replicates the head functionality of bash 
# code should define a variable with the file to return lines from 
#also a variable representing number of lines to be returned from the top of the file

filename <- read.csv(file="iris.csv", header=T, sep=",", stringsAsFactors = F) # Where "wages.csv" can be any file.csv
# filename[c(1:X),] where X is the number of rows from the top that you want to show 
x=6  #where x is a variable for the number of lines you desire
head_function <- filename[c(1:x),]
print(head_function)

#part2
iris <- read.csv(file="iris.csv", header=T, sep=",")
iris
#print last two rows of last two columns into R console 
iris[c(149,150),c(4,5)]
#get the number of observations for each species included in the data set 
#virginica, versicolor, setosa
setosa <- iris[iris$Species=="setosa",]
dim(setosa)
versicolor <- iris[iris$Species=="versicolor",]
virginica <- iris[iris$Species=="virginica",]
dim(versicolor)
dim(virginica)

#get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

#write the data for the species setosa to a comma-delimited file named 'setosa.csv'
setosa
write.table(setosa,"setosa.csv", row.names=F, sep=",")
            
#calculate the mean, minimum, and maximum of petal.length for virginica
virginica 
virginica[,3]
mean(virginica[,3])
min(virginica[,3])
max(virginica[,3])


            
            
            
            