## -----------------------------------------------------------------------------
library("vioplot")

## ---- message=FALSE, eval=FALSE-----------------------------------------------
#  data(iris)
#  boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))
#  library("vioplot")
#  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))

## ---- message=FALSE, echo=FALSE-----------------------------------------------
data(iris)
boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length")
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="magenta")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"))
legend("topleft", legend=c("setosa", "versicolor", "virginica"), fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.5)

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"))
legend("topleft", legend=c("setosa", "versicolor", "virginica"), fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.5)

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue", border="royalblue")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", rectCol="palevioletred", lineCol="violetred")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", colMed="violet")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue", border="royalblue", rectCol="palevioletred", lineCol="violetred", colMed="violet")

## -----------------------------------------------------------------------------
histoplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length (Equal Area)", areaEqual = T, col=c("lightgreen", "lightblue", "palevioletred"), border=c("darkolivegreen4", "royalblue4", "violetred4"), rectCol=c("forestgreen", "blue", "palevioletred3"), lineCol=c("darkolivegreen", "royalblue", "violetred4"), colMed=c("green", "cyan", "magenta"), pchMed=c(15, 17, 19))

## ---- message=FALSE-----------------------------------------------------------
data(iris)
summary(iris$Sepal.Width)
table(iris$Sepal.Width > mean(iris$Sepal.Width))
iris_large <- iris[iris$Sepal.Width > mean(iris$Sepal.Width), ]
iris_small <- iris[iris$Sepal.Width <= mean(iris$Sepal.Width), ]

## ---- fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
histoplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right")
histoplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T)
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

