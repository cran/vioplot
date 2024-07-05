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

## ----message=FALSE------------------------------------------------------------
data(iris)
summary(iris$Sepal.Width)
table(iris$Sepal.Width > mean(iris$Sepal.Width))
iris_large <- iris[iris$Sepal.Width > mean(iris$Sepal.Width), ]
iris_small <- iris[iris$Sepal.Width <= mean(iris$Sepal.Width), ]

## ----fig.align = 'center', fig.height = 6, fig.width = 6, fig.keep = 'last'----
{
  par(mfrow=c(1,2))
histoplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line")
histoplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line")
par(mfrow=c(1,1))
}

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
histoplot(Sepal.Length~Species, data=iris_large, col = "palevioletred", plotCentre = "line", side = "right")
histoplot(Sepal.Length~Species, data=iris_small, col = "lightblue", plotCentre = "line", side = "left", add = T)
title(xlab = "Species", ylab = "Sepal Length")
legend("topleft", fill = c("lightblue", "palevioletred"), legend = c("small", "large"), title = "Sepal Width")

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

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
dlist1 <- lapply(c(10,20,30,40), function(n) runif(n))
dlist2 <- lapply(c(100,200,300,400), function(n) runif(n))

hscale1 <- sapply(dlist1, function(r){
  max(hist(r, plot=FALSE, breaks=seq(0,1,by=.05))$density)})
histoplot(dlist1, side='left', col=grey(.3),
          breaks=seq(0,1,by=.05), add=FALSE, pchMed=NA, drawRect=FALSE, border=NA,
          wex=hscale1/length(hscale1))
hscale2 <- sapply(dlist2, function(r){
  max(hist(r, plot=FALSE, breaks=seq(0,1,by=.05))$density)})
histoplot(dlist2, side='right', col=grey(.7),
          breaks=seq(0,1,by=.05), add=TRUE, pchMed=NA, drawRect=FALSE, border=NA,
          wex=hscale2/length(hscale2))

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
dvec <- length(unlist(c(dlist1, dlist2)))/4

histoplot(dlist1, side='left', col=grey(.3),
          breaks=seq(0,1,by=.05), add=FALSE, pchMed=NA, drawRect=FALSE, border=NA,
          wex=sapply(dlist1, length)/dvec*hscale1/length(hscale1))
histoplot(dlist2, side='right', col=grey(.7),
          breaks=seq(0,1,by=.05), add=TRUE, pchMed=NA, drawRect=FALSE, border=NA,
          wex=sapply(dlist2, length)/dvec*hscale2/length(hscale2))

## ----fig.align = 'center', fig.height = 3, fig.width = 6, fig.keep = 'last'----
hist(runif(100), density=c(10,20), angle=c(22,90+22) ,col=1)

outer_legend <- function(...) {
  opar <- par(fig=c(0, 1, 0, 1), oma=c(0, 0, 0, 0), mar=c(0, 0, 0, 0), new=TRUE)
  on.exit(par(opar))
  plot(0, 0, type='n', bty='n', xaxt='n', yaxt='n')
  legend(...)
}
outer_legend('topright', pch=15, density=c(10,20), angle=c(22,90+22), col=0, legend=c('Y','N'))

