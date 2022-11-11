# A Script to do several tasks as outlined by exercise 8


# 1: create R code that serves as the bash head function without using head

# first need to set variable for number of lines to take from top of file
linenum <- 5

# create variable to read desired file 
# assuming your current directory is the Exercise_8 directory
wages <- read.csv("wages.csv")

# Save the top N lines of your files as a variable "rhead"
rhead <- wages[1:linenum,]

# reads the top N lines into the terminal
rhead


# 2: a set of tasks

# 2.1: print the last two rows in the last two columns to the R terminal
# first select the file to be read, iris.csv in this case
iris <- read.csv("iris.csv")
# Select for the last two columns
c2 <- iris[,4:5]
# Select for the last two rows and print the output
tail(c2,2)

# 2.2: get the number of observations of each species included in the data set
table(iris$Species)

# 2.3: get rows with Sepal.Width > 3.5
# I didn't know if you want the full rows or the row numbers, so I did both
# this is the full row one
subset(iris, Sepal.Width > 3.5)
# this is the just row number one
which(iris$Sepal.Width >3.5)

# 2.4: write the data for the species setosa to a comma-delimited file names "setosa.csv"
# uses setosa from species subset to create a comma seperated table 
# I tried write.csv, but when I would check the output the commas would only show up in the terminal and not console, so I went for write.table
write.table(subset(iris, Species=="setosa"),"setosa.csv", sep=',')
print("File Created: setosa.csv")

# 2.5: calculate the mean, minimum, and maximum Petal.Length for virginica 
# create a variable to store all virginica data
v <- subset(iris, Species=="virginica")
# use the variable and further subset for petal length while using functions
# also prints out what the number is above it for clarity
#mean
print("Mean Petal Length")
mean(v$Petal.Length)
#min
print("Mininmum Petal Length")
min(v$Petal.Length)
#max
print("Maximum Petal Length")
max(v$Petal.Length)



