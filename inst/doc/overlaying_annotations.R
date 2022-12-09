## -----------------------------------------------------------------------------
# generate dummy data
a <- rnorm(25, 3, 0.5)
b <- rnorm(25, 2, 1.0)
c <- rnorm(25, 2.75, 0.25)
d <- rnorm(25, 3.15, 0.375)
e <- rnorm(25, 1, 0.25)
datamat <- cbind(a, b, c, d, e)
dim(datamat)

## -----------------------------------------------------------------------------
library("vioplot")

## -----------------------------------------------------------------------------
vioplot(datamat, ylim = c(0, 5))
# compute medians
data.med <- apply(datamat, 2, median)
data.med

#overlay medians
lines(data.med, lty = 2, lwd = 1.5)
points(data.med, pch = 19, col = "red", cex = 2.25)

## -----------------------------------------------------------------------------
outcome <- c(rnorm(25, 3, 1), rnorm(25, 2, 0.5))
intervention <- c(rep("treatment", 25), rep("control", 25))
table(intervention)
names(table(intervention))
unique(sort(intervention))
intervention <- as.factor(intervention)
levels(intervention)
d <- data.frame(outcome, intervention)
vioplot(outcome ~ intervention, data = d, xaxt = 'n', yaxt = 'n', 
        main = "", xlab = "", ylab = "")
axis(side = 1, at = 1:length(levels(intervention)), labels = levels(intervention))
mtext("custom x labels for intervention", side = 1)
mtext("custom y labels for outcome", side = 2)
title(main = "example with custom title", sub = "subtitles are supported")

## -----------------------------------------------------------------------------
histoplot(outcome ~ intervention, data = d, xaxt = 'n', yaxt = 'n', 
        main = "", xlab = "", ylab = "")
axis(side = 1, at = 1:length(levels(intervention)), labels = levels(intervention))
mtext("custom x labels for intervention", side = 1)
mtext("custom y labels for outcome", side = 2)
title(main = "example with custom title", sub = "subtitles are supported")

