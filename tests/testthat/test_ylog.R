library("vioplot")
context("log-scale")

test_that("plot defaults", {
  data(iris)
  boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"))
})

##y-axis log scale (ylog)
test_that("log-scale y-axis with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = T)
})
test_that("linear y-axis with ylog FALSE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = F)
})

##y-axis log scale (log=TRUE)
test_that("log-scale y-axis with log TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = T)
})
test_that("linear y-axis with log FALSE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = F)
})
test_that("override with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = F, ylog=T)
})

##y-axis log scale (log="y")
test_that("log-scale y-axis with log='y'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'y')
})
test_that("log-scale y-axis with log='xy'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'xy')
})
test_that("linear y-axis with log=''", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = '')
})
test_that("linear y-axis with log='x'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'x')
})
test_that("override with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'x', ylog=T)
})

##y-axis removed
test_that("linear scale y-axis with labels removed", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = F, yaxt="n")
})
test_that("log-scale y-axis with labels removed", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = T, yaxt="n")
})

library("vioplot")
context("log-scale")

test_that("horizontal: plot defaults", {
  data(iris)
  boxplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"))
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"))
})

##x-axis log scale (ylog)
test_that("horizontal: log-scale x-axis with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = T)
})
test_that("horizontal: log-scale x-axis with xlog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", xlog = T)
})
test_that("horizontal: linear x-axis with ylog FALSE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = F)
})
test_that("horizontal: linear x-axis with xlog FALSE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", xlog = F)
})

##x-axis log scale (log=TRUE)
test_that("horizontal: log-scale x-axis with log TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = T)
})
test_that("horizontal: linear x-axis with log FALSE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = F)
})
test_that("horizontal: override with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = F, ylog=T)
})

##x-axis log scale (log="y")
test_that("horizontal: log-scale x-axis with log='y'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'y')
})
test_that("horizontal: log-scale x-axis with log='xy'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'xy')
})
test_that("horizontal: linear x-axis with log=''", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = '')
})
test_that("horizontal: linear x-axis with log='x'", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'x')
})
test_that("horizontal: override with ylog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'x', ylog=T)
})
test_that("horizontal: override with xlog TRUE", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", log = 'x', xlog=T)
})

##x-axis removed
test_that("horizontal: linear scale x-axis with labels removed", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", ylog = F, yaxt="n")
})
test_that("horizontal: linear scale x-axis with labels removed", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", xlog = F, yaxt="n")
})
test_that("horizontal: log-scale x-axis with labels removed", {
  vioplot(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Length[iris$Species=="virginica"], horizontal = TRUE, names=c("setosa", "versicolor", "virginica"), main="Sepal Length", xlog = T, yaxt="n")
})

