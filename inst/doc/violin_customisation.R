## -----------------------------------------------------------------------------
library("vioplot")

## ----message=FALSE, eval=FALSE------------------------------------------------
#  data(iris)
#  boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))
#  library("vioplot")
#  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))

## ----message=FALSE, echo=FALSE------------------------------------------------
data(iris)
boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length")
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="magenta")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"))
legend("topleft", legend=c("setosa", "versicolor", "virginica"), fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.5)

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue", border="royalblue")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", rectCol="palevioletred", lineCol="violetred")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", colMed="violet")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main = "Sepal Length", col="lightblue", border="royalblue", rectCol="palevioletred", lineCol="violetred", colMed="violet")

## -----------------------------------------------------------------------------
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length (Equal Area)", areaEqual = T, col=c("lightgreen", "lightblue", "palevioletred"), border=c("darkolivegreen4", "royalblue4", "violetred4"), rectCol=c("forestgreen", "blue", "palevioletred3"), lineCol=c("darkolivegreen", "royalblue", "violetred4"), colMed=c("green", "cyan", "magenta"), pchMed=c(15, 17, 19))

## ----fig.align = 'center', fig.height = 4, fig.width = 8, fig.keep = 'last'----
data("iris")
attach(iris)
vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], main = "Sepal Length", ylab = "",
        col=c("lightgreen", "lightblue", "palevioletred"), ylim = c(0, max(Sepal.Length) * 1.1))
legend("bottomright", legend=c("setosa", "versicolor", "virginica"),
       fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.8)
add_labels(unlist(iris$Sepal.Length), iris$Species, height = 0.5, cex = 0.8)

## ----warning=FALSE------------------------------------------------------------
# add outliers to demo data
iris2 <- iris
iris2 <- rbind(iris2, c(7, 1, 0, 0, "setosa"))
iris2 <- rbind(iris2, c(1, 10, 0, 0, "setosa"))
iris2 <- rbind(iris2, c(9, 2, 0, 0, "versicolor"))
iris2 <- rbind(iris2, c(2, 12, 0, 0, "versicolor"))
iris2 <- rbind(iris2, c(10, 1, 0, 0, "virginica"))
iris2 <- rbind(iris2, c(12, 7, 0, 0, "virginica"))
iris2$Species <- factor(iris2$Species)
iris2$Sepal.Length <- as.numeric(iris2$Sepal.Length)
iris2$Sepal.Width <- as.numeric(iris2$Sepal.Width)
table(iris2$Species)

## ----fig.align = 'center', fig.height = 4, fig.width = 8, fig.keep = 'last'----
attach(iris2)
vioplot(iris2$Sepal.Length[iris$Species=="setosa"], iris2$Sepal.Length[iris$Species=="versicolor"], iris2$Sepal.Length[iris2$Species=="virginica"], main = "Sepal Length",
        col=c("lightgreen", "lightblue", "palevioletred"), ylim = c(min(Sepal.Length) * 0.9, max(Sepal.Length) * 1.1),
        names=c("setosa", "versicolor", "virginica"))
Sepal.medians <- sapply(unique(Species), function(sp) median(Sepal.Length[Species == sp]))
# highlights medians
points(x = c(1:length(Sepal.medians)), y = Sepal.medians, pch = 21, cex = 1.25, lwd = 2,
       col = "white", bg = c("forestgreen", "lightblue4", "palevioletred4"))
# plots outliers above 2 SD
add_outliers(unlist(iris2$Sepal.Length), iris2$Species, cutoff = 2,
             col = "black", bars = "grey85", lwd = 2,
             fill = c("palegreen3", "lightblue3", "palevioletred3"))
legend("bottomright", legend=c("setosa", "versicolor", "virginica"),
       fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.6)
add_labels(unlist(iris2$Sepal.Length), iris2$Species, height = 0.5, cex = 0.8)

## ----fig.align = 'center', fig.height = 4, fig.width = 8, fig.keep = 'last'----
data(iris)
summary(iris2$Sepal.Width)
table(iris2$Sepal.Width > mean(iris2$Sepal.Width))
iris_large <- iris2[iris2$Sepal.Width > mean(iris2$Sepal.Width), ]
iris_small <- iris2[iris2$Sepal.Width <= mean(iris2$Sepal.Width), ]

attach(iris_large)
vioplot(iris_large$Sepal.Length[iris_large$Species=="setosa"], iris_large$Sepal.Length[iris_large$Species=="versicolor"], iris_large$Sepal.Length[iris_large$Species=="virginica"], plotCentre = "line", side = "right", col=c("lightgreen", "lightblue", "palevioletred"), ylim = c(min(iris2$Sepal.Length) * 0.9, max(iris2$Sepal.Length) * 1.1),
        names=c("setosa", "versicolor", "virginica"))
Sepal.medians <- sapply(unique(Species), function(sp) median(iris_large$Sepal.Length[Species == sp]))
# highlights medians
points(x = c(1:length(Sepal.medians)), y = Sepal.medians, pch = 21, cex = 1.25, lwd = 2,
       col = "white", bg = c("forestgreen", "lightblue4", "palevioletred4"))
# plots outliers above 2 SD
add_outliers(unlist(iris_large$Sepal.Length), iris2$Species, cutoff = 2,
             col = c("palegreen3", "lightblue3", "palevioletred3"), bars = "grey85", lwd = 2,
             fill = "grey85")
legend("bottomright", legend=c("setosa", "versicolor", "virginica"),
       fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.6)
add_labels(unlist(iris2$Sepal.Length), iris2$Species, height = 0.5, cex = 0.8)

attach(iris_small)
vioplot(iris_small$Sepal.Length[iris_small$Species=="setosa"], iris_small$Sepal.Length[iris_small$Species=="versicolor"], iris_small$Sepal.Length[iris_small$Species=="virginica"], plotCentre = "line", side = "left", add = T, col=c("palegreen1", "lightblue1", "palevioletred1"), ylim = c(min(Sepal.Length) * 0.9, max(Sepal.Length) * 1.1),
        names=c("setosa", "versicolor", "virginica"))


Sepal.medians <- sapply(unique(Species), function(sp) median(iris_small$Sepal.Length[Species == sp]))
# highlights medians
points(x = c(1:length(Sepal.medians)), y = Sepal.medians, pch = 21, cex = 1.25, lwd = 2,
       col = "white", bg = c("forestgreen", "lightblue4", "palevioletred4"))
# plots outliers above 2 SD
add_outliers(unlist(iris2$Sepal.Length), iris2$Species, cutoff = 2,
             col = c("palegreen3", "lightblue3", "palevioletred3"), bars = "grey85", lwd = 2,
             fill = "grey50")
legend("bottomright", legend=c("setosa", "versicolor", "virginica"),
       fill=c("lightgreen", "lightblue", "palevioletred"), cex = 0.6)
add_labels(unlist(iris2$Sepal.Length), iris2$Species, height = 0.5, cex = 0.8)

# add legend and titles
legend("topleft", fill = c("lightblue2", "lightblue3"), legend = c("small", "large"), title = "Sepal Width")
title(xlab = "Species", ylab = "Sepal Length")

