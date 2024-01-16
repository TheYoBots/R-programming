# Write a R program to read the .csv file and perform the following:
# (a) Plot the data using ggplot.
# (b) Test a hypothesis about the data.

install.packages('ggplot2') # for downloading open source package ggplot
library(ggplot2) # for loading ggplot2 in current session
data()
dim(iris)
head(iris)
summary(iris)
# scatter plot
print(ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_point())
print(ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point())
print(ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_line())
print(ggplot(iris, aes(x=Sepal.Length, y=Petal.Length))+geom_boxplot())
print(ggplot(iris, aes(x=Sepal.Length, y=Petal.Length, col=Species))+geom_point()+geom_smooth())