## Zero one (to avoid digiting errors)
zo <- 0:1
## A common coding function
noYes <- function(x) factor(x, levels = zo, labels = c("No","Yes"))
