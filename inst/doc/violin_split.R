## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
library("vioplot")

## ----message=FALSE------------------------------------------------------------
data(iris)
summary(iris$Sepal.Width)
table(iris$Sepal.Width > mean(iris$Sepal.Width))
iris_large <- iris[iris$Sepal.Width > mean(iris$Sepal.Width), ]
iris_small <- iris[iris$Sepal.Width <= mean(iris$Sepal.Width), ]

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
boxplot(Sepal.Length~Species, data=iris, col="grey")

## ----fig.align = 'center', fig.height = 6, fig.width = 6, fig.keep = 'last'----
{
  par(mfrow=c(2,1))
boxplot(Sepal.Length~Species, data=iris_small, col = "lightblue")
boxplot(Sepal.Length~Species, data=iris_large, col = "palevioletred")
par(mfrow=c(1,1))
}

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris)

## ----fig.align = 'center', fig.height = 6, fig.width = 6, fig.keep = 'last'----
{
  par(mfrow=c(2,1))
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line")
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line")
par(mfrow=c(1,1))
}

## ----fig.align = 'center', fig.height = 6, fig.width = 6, fig.keep = 'last'----
{
  par(mfrow=c(1,2))
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line")
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line")
par(mfrow=c(1,1))
}

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right")
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T)
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right", xlab = "Iris species", ylab = "Length", main = "Sepals", names=paste("Iris", levels(iris$Species)))
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T)
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Width")

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right")
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T, xlab = "Iris species", ylab = "Length", main = "Sepals", names=paste("Iris", levels(iris$Species)))
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Width")

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "point", side = "right", pchMed = 21, colMed = "palevioletred4", colMed2 = "palevioletred2")
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "point", side = "left", pchMed = 21, colMed = "lightblue4", colMed2 = "lightblue2", add = T)
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "point", side = "right", pchMed = 21, colMed = "palevioletred4", colMed2 = "palevioletred2")
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "point", side = "left", pchMed = 21, colMed = "lightblue4", colMed2 = "lightblue2", add = T)
points(1:length(levels(iris$Species)), as.numeric(sapply(levels(iris$Species), function(species) median(iris_large[grep(species, iris_large$Species),]$Sepal.Length))), pch = 21, col = "palevioletred4", bg = "palevioletred2")
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
vioplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right", pchMed = 21, colMed = "palevioletred4", colMed2 = "palevioletred2")
vioplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", pchMed = 21, colMed = "lightblue4", colMed2 = "lightblue2", add = T)
points(1:length(levels(iris$Species)), as.numeric(sapply(levels(iris$Species), function(species) median(iris_large[grep(species, iris_large$Species),]$Sepal.Length))), pch = 21, col = "palevioletred4", bg = "palevioletred2")
points(1:length(levels(iris$Species)), as.numeric(sapply(levels(iris$Species), function(species) median(iris_small[grep(species, iris_small$Species),]$Sepal.Length))), pch = 21, col = "lightblue4", bg = "lightblue2")
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

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
data(iris)
summary(iris2$Sepal.Width)
table(iris2$Sepal.Width > mean(iris2$Sepal.Width))
iris_large <- iris2[iris2$Sepal.Width > mean(iris2$Sepal.Width), ]
iris_small <- iris2[iris2$Sepal.Width <= mean(iris2$Sepal.Width), ]

attach(iris_large)
vioplot(Sepal.Length~Species, data=iris_large, plotCentre = "line", side = "right", col=c("lightgreen", "lightblue", "palevioletred"), ylim = c(min(iris2$Sepal.Length) * 0.9, max(iris2$Sepal.Length) * 1.1),
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
       fill=c("palegreen3", "lightblue3", "palevioletred3"), cex = 0.6)
add_labels(unlist(iris2$Sepal.Length), iris2$Species, height = 0.5, cex = 0.8)

attach(iris_small)
vioplot(Sepal.Length~Species, data=iris_small, plotCentre = "line", side = "left", add = T, col=c("palegreen1", "lightblue1", "palevioletred1"), ylim = c(min(Sepal.Length) * 0.9, max(Sepal.Length) * 1.1),
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

