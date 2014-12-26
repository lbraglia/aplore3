
source("utils.r")

## SCALE_EXAMPLE
## -------
scale_example <- read.table(file = "Scale_Example/Scale_Example.txt",
                    as.is = TRUE,
                    header = FALSE)
names(scale_example) <- c("y", "x")
scale_example <- within(scale_example, {
  y <- noYes(y)
})
dim(scale_example)
summary(scale_example)

save("scale_example", file = "../data/scale_example.rda", compress = "bzip2")
