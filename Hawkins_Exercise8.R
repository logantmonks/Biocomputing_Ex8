##Hawkins exercise8 for week 10
#E8.1
iris <- read.csv("iris.csv") ## Pulls up iris

linenumber <- 5 ## this creates a variable set to the value of 5

iris[1:linenumber,] ## works much like the head function in both r and bash, brings up the first few rows (in this case:5 + header)


#E8.2
ncolirisminusone <- ncol(iris)-1
tail(iris, n=2)[,ncolirisminusone:ncol(iris)] ##Prints the final two rows within the last two columns (Petal.Width, Species)

table(iris$Species) ##Prints out a table that shows the number of observations for each species investigated

iris[iris$Sepal.Width>"3.5",] ##Print out instances in which Sepal.Width is greater than 3.5

write.csv(iris[iris$Species=='setosa',], file = "setosa.csv", row.names = FALSE,) ## Creates a .csv file that contains all of the information for instances in which species=setosa

mean(iris$Petal.Length[iris$Species=='virginica']) ## Mean of petal lengths in which species=virginica
max(iris$Petal.Length[iris$Species=='virginica'])  ## Max of petal lengths in which species=virginica
min(iris$Petal.Length[iris$Species=='virginica'])  ## Min of petal lengths in which species=virginica



       