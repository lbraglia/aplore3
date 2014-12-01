
source("utils.R")
dataset <- read.table(file = "DATASET/DATASET.txt",
                      as.is = TRUE,
                      header = TRUE)
names(dataset) <- tolower(names(dataset))
## low.label <- c(">= 2500 g","< 2500 g")
## race.label <- c("White", "Black", "Other")
## no.one.twoetc <- c("None", "One", "Two, etc.")

dataset <- within(dataset, {

})
dataset <- dataset[order(dataset$id), ]
rownames(dataset) <- NULL

save("dataset", file = "../data/dataset.rda")
