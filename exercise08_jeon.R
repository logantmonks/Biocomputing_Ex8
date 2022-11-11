# hjeon

# Biocomputing Exercise 08
# Question 1
setwd("/Users/hyesooclarejeon/") # set working directory
# define function for alternative head
head <- function(filename, numLines) {
  parsed <- read.table(file=filename, sep="\n", header=TRUE, stringsAsFactors=TRUE) # store file data by new line to parsed
  print(parsed[,numLines])
}
head("iris.csv", 5)

# Question 2
firstList <- seq(from=100,to=1000,by=100)
secondList <- cbind(c("Notre Dame", 44), c("UNLV", 21))
thirdList <- c(999)
fourthList <- matrix(1:50,nrow=10,ncol=5)
fifthList <- c("U", "N", "D")
newList=list(firstList, secondList, thirdList, fourthList, fifthList)
newList

