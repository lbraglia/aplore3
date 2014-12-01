
source("utils.r")
glow500 <- read.table(file = "GLOW/GLOW500.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow500) <- tolower(names(glow500))
raterisk.label <- list(`long` = c("Less than others of the same age",
                       "Same as others of the same age",
                       "Greater than others of the same age") ,
                       `short`= c("Less","Same","Greater"))

glow500 <- within(glow500, {
  priorfrac <- noYes(priorfrac)
  premeno <- noYes(premeno)
  momfrac <- noYes(momfrac)
  armassist <- noYes(armassist)
  smoke <- noYes(smoke)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
})
glow500 <- glow500[order(glow500$sub_id), ]
rownames(glow500) <- NULL
dim(glow500)
summary(glow500)

save("glow500", file = "../data/glow500.rda")
