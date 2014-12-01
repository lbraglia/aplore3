## 0:* (to avoid digiting errors)
z1 <- 0:1
z2 <- 0:2
z3 <- 0:3
z4 <- 0:4
## 1:* (to avoid digiting errors)
o2 <- 1:2
o3 <- 1:3
o4 <- 1:4
o5 <- 1:5
o6 <- 1:6
## A common coding function
no.yes.label <- c("No","Yes")
noYes <- function(x) factor(x, levels = z1, labels = no.yes.label)
yesNo <- function(x) factor(x, levels = z1, labels = rev(no.yes.label))
