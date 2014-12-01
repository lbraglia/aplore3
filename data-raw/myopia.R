
source("utils.r")
myopia <- read.table(file = "MYOPIA/MYOPIA.txt",
                      as.is = TRUE,
                      header = TRUE)
names(myopia) <- tolower(names(myopia))
gender.label <- c("Male","Female")

myopia <- within(myopia, {
  myopic <- noYes(myopic)
  gender <- factor(gender, levels = z1, gender.label)
  mommy <- noYes(mommy)
  dadmy <- noYes(dadmy)
})
myopia <- myopia[order(myopia$id), ]
rownames(myopia) <- NULL
dim(myopia)
summary(myopia)

save("myopia", file = "../data/myopia.rda")
