#1. Write R code that defines a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file.The seleced fike content should be printed to the terminal in R.
#Step 1: define variable of the file to return
file=read.csv("iris.csv")
file
#Define lines to return.
lines=2
headFile=file[(1:lines),]
headFile

#2. 