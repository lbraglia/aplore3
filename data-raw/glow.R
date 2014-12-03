
source("utils.r")

## GLOW500
## -------
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

## GLOW11M
## -------
glow11m <- read.table(file = "GLOW/GLOW11M.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow11m) <- tolower(names(glow11m))

glow11m <- within(glow11m, {
  priorfrac <- noYes(priorfrac)
  premeno <- noYes(premeno)
  momfrac <- noYes(momfrac)
  armassist <- noYes(armassist)
  smoke <- noYes(smoke)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
})
glow11m <- glow11m[order(glow11m$pair, glow11m$sub_id), ]
rownames(glow11m) <- NULL
dim(glow11m)
summary(glow11m)

save("glow11m", file = "../data/glow11m.rda")
