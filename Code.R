#Problem 1
# Define Total_Lines user wants to print
Total_Lines = 10

for(Line in 1:Total_Lines){
  specific_line = wages[ Line, ]
  print(specific_line)
}


#Problem 2 using iris.csv
#Print the last 2 rows in the last 2 columns to the terminal
for(Row in 149:150){
  for(Column in 4:5){
    Line = iris[ Row, Column]
    print(Line)

  }

}

#Get the number of observations of each species included in the dataset
Setosa_observation = 0
Versicolor_observation = 0
Virginicia_observation = 0
for(Row in 1:150){
  Species = iris[Row, 5]
  Setosa = "setosa"
  Versicolor = "versicolor"
  Virginicia = "virginicia"
  if(Species == "setosa"){
    Setosa_observation = Setosa_observation + 1
  }
  if(Species == "versicolor"){
    Versicolor_observation = Versicolor_observation + 1
  } 
  if(Species == "virginica"){
    Virginicia_observation = Virginicia_observation + 1
  } 
}


#Get rows with Sepal.Width > 3.5 
for(Row in 1:150){
  Sepal_Width_Value= iris[Row, 2]
  if (Sepal_Width_Value > 3.5){
    print("The row that has a Sepal Width value greater than 3.5: ")
    print(Row) 
  }
} 

#Write the data for the species setosa to a comma-delimited file names setosa.csv
mat <- matrix(, nrow = 51, ncol = 4)
mat[1,1] = "Sepal.Length"
mat[1,2] = "Sepal.Width"
mat[1,3] = "Petal.Length"
mat[1,4] = "Petal.Width"
for(Row in 1:50){
    # data = data.frame(Sepal.Length = iris[Row,1], Sepal.Width = (iris[Row,2]),
    #                   Petal.Length=(iris[Row,3]),
    #                   Petal.Width = (iris[Row,4]))
    # write.table(data, file = "setosa.csv")
  mat[Row+1, 1] = iris[Row,1]
  mat[Row+1, 2] = iris[Row,2]
  mat[Row+1, 3] = iris[Row,3]
  mat[Row+1, 4] = iris[Row,4]

}
write.csv(mat, file="Setosa.csv")


#Calculate the mean, minimum, and maximum of Petal.length for observations from virginicia
Petal_Length_Max = 0
Petal_Length_Min = 20
Petal_Length_Addition = 0
for(Row in 1:150){
  if(iris[Row, 5] == "virginica"){
    Petal_Length_Addition = Petal_Length_Addition + iris[Row, 3]
    if(Petal_Length_Max < iris[Row, 3]){
      Petal_Length_Max = iris[Row, 3]
    }
    if(Petal_Length_Min > iris[Row, 3]){
      Petal_Length_Min = iris[Row, 3]
    }
  }
}

Petal_Length_Mean = Petal_Length_Addition / Virginicia_observation

