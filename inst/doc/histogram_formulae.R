## -----------------------------------------------------------------------------
library("vioplot")

## ----message=FALSE, eval=FALSE------------------------------------------------
#  data(iris)
#  boxplot(Sepal.Length~Species, data = iris)

## ----message=FALSE, echo=FALSE------------------------------------------------
data(iris)
boxplot(Sepal.Length~Species, data = iris, main = "Sepal Length")

## ----message=FALSE, eval=FALSE------------------------------------------------
#  devtools::install_version("vioplot", version = "0.2")
#  library("vioplot")
#  vioplot(Sepal.Length~Species, data = iris)

## ----message=FALSE, eval=FALSE------------------------------------------------
#  vioplot(Sepal.Length~Species, data = iris)

## ----message=FALSE, echo=FALSE------------------------------------------------
vioplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col="magenta")

## -----------------------------------------------------------------------------
vioplot(Sepal.Length~Species, data = iris, main = "Sepal Length")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col="lightblue")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"))
legend("topleft", legend=c("setosa", "versicolor", "virginica"), fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.5)

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col="lightblue", border="royalblue")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", rectCol="palevioletred", lineCol="violetred")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", colMed="violet")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col="lightblue", border="royalblue", rectCol="palevioletred", lineCol="violetred", colMed="violet")

## -----------------------------------------------------------------------------
histoplot(Sepal.Length~Species, data = iris, main="Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"), border=c("darkolivegreen4", "royalblue4", "violetred4"), rectCol=c("forestgreen", "blue", "palevioletred3"), lineCol=c("darkolivegreen", "royalblue", "violetred4"), colMed=c("green", "cyan", "magenta"), pchMed=c(15, 17, 19))

## ----message=FALSE------------------------------------------------------------
data(iris)
summary(iris$Sepal.Width)
table(iris$Sepal.Width > mean(iris$Sepal.Width))
iris_large <- iris[iris$Sepal.Width > mean(iris$Sepal.Width), ]
iris_small <- iris[iris$Sepal.Width <= mean(iris$Sepal.Width), ]

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
histoplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right")
histoplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T)
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

