# Question Number 1 for Ex8
# Hugh Smith
# 11/10/22

# number of lines you want to take from the file
num_lines = 4
# insert your desired file to read from below- this is an example using iris.csv
iris= read.csv("~/biocomputing/Biocomputing_Ex8/iris.csv")
# runs the equivalent of the head function and returns it to a variable
topNLines = iris[1:num_lines,]
# prints the output/result
print(topNLines)