
source("utils.r")
dataset <- read.table(file = "DATASET/DATASET.txt",
                      as.is = TRUE,
                      header = TRUE)
names(dataset) <- tolower(names(dataset))
## var.label <- c("foo","bar")

dataset <- within(dataset, {

})
dataset <- dataset[order(dataset$id), ]
rownames(dataset) <- NULL
dim(dataset)
summary(dataset)

save("dataset", file = "../data/dataset.rda")
