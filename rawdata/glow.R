
source("utils.r")
raterisk.label <- list(`long` = c("Less than others of the same age",
                       "Same as others of the same age",
                       "Greater than others of the same age") ,
                       `short`= c("Less","Same","Greater"))

## GLOW500
## -------
glow500 <- read.table(file = "GLOW/GLOW500.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow500) <- tolower(names(glow500))

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

save("glow500", file = "../data/glow500.rda", compress = "bzip2")

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

save("glow11m", file = "../data/glow11m.rda", compress = "bzip2")


## GLOW_BONEMED
## -------
glow_bonemed <- read.table(file = "GLOW/GLOW_BONEMED.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow_bonemed) <- tolower(names(glow_bonemed))

glow_bonemed <- within(glow_bonemed, {
  priorfrac <- noYes(priorfrac)
  premeno <- noYes(premeno)
  momfrac <- noYes(momfrac)
  armassist <- noYes(armassist)
  smoke <- noYes(smoke)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
  bonemed <- noYes(bonemed)
  bonemed_fu <- noYes(bonemed_fu)
  bonetreat <- factor(((bonemed %in% "Yes") & (bonemed_fu %in% "Yes")),
                      levels = c(FALSE, TRUE),
                      labels = no.yes.label
                      )
})

glow_bonemed <- glow_bonemed[order(glow_bonemed$sub_id), ]
rownames(glow_bonemed) <- NULL
dim(glow_bonemed)
summary(glow_bonemed)

save("glow_bonemed", file = "../data/glow_bonemed.rda", compress = "bzip2")

## GLOW_MIS_COMP
## -------
glow_mis_comp <- read.table(file = "GLOW/GLOW_MIS_Comp_Data.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow_mis_comp) <- tolower(names(glow_mis_comp))

glow_mis_comp <- within(glow_mis_comp, {
  priorfrac <- noYes(priorfrac)
  momfrac <- noYes(momfrac)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
})
glow_mis_comp <- glow_mis_comp[order(glow_mis_comp$sub_id), ]
rownames(glow_mis_comp) <- NULL
dim(glow_mis_comp)
summary(glow_mis_comp)

save("glow_mis_comp", file = "../data/glow_mis_comp.rda", compress = "bzip2")

## GLOW_MIS_WMISSING
## -------
glow_mis_wmissing <- read.delim(file = "GLOW/GLOW_MIS_WMissing_Data.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow_mis_wmissing) <- tolower(names(glow_mis_wmissing))

glow_mis_wmissing <- within(glow_mis_wmissing, {
  priorfrac <- noYes(priorfrac)
  momfrac <- noYes(momfrac)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
})
glow_mis_wmissing <- glow_mis_wmissing[order(glow_mis_wmissing$sub_id), ]
rownames(glow_mis_wmissing) <- NULL
dim(glow_mis_wmissing)
summary(glow_mis_wmissing)

save("glow_mis_wmissing", file = "../data/glow_mis_wmissing.rda",
     compress = "bzip2")

## GLOW_RAND
## -------
glow_rand <- read.delim(file = "GLOW/GLOW_RAND.txt",
                      as.is = TRUE,
                      header = TRUE)
names(glow_rand) <- tolower(names(glow_rand))

glow_rand <- within(glow_rand, {
  priorfrac <- noYes(priorfrac)
  premeno <- noYes(premeno)
  momfrac <- noYes(momfrac)
  armassist <- noYes(armassist)
  smoke <- noYes(smoke)
  raterisk <- factor(raterisk, levels = o3,
                     labels = raterisk.label[["short"]])
  fracture <- noYes(fracture)
})
glow_rand <- glow_rand[order(glow_rand$sub_id), ]
rownames(glow_rand) <- NULL
dim(glow_rand)
summary(glow_rand)

save("glow_rand", file = "../data/glow_rand.rda", compress = "bzip2")
