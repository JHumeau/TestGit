library(dplyr)
library(ggplot2)
library(data.table)
library(reshape)
library(cowplot)
library(devtools)
library(rpart)
library(rpart.plot)

install_github("vqv/ggbiplot")

uri <- 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'
iris <- read.csv(uri, header=FALSE)
colnames(iris) <- c('sepal_length', 'sepal_width', 'petal_length', 'petal_width', 'species')

str(iris)
head(iris)
head(iris, 2)

print("iris is a table")
print(dim(iris))
shape=dim(iris)
shape[1]
shape[2]
print(sprintf("Shape of the iris data set: [%s,%s]",shape[1], shape[2] ))
print(table(iris[,'species']))

mean(iris$sepal_length)
mean(iris[,"sepal_length"])

mean(iris[which(iris$species == 'Iris.setosa'),"sepal_length"])
mean(iris$sepal_length[which(iris$species == 'Iris.setosa'),])

#mean

