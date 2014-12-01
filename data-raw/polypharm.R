
source("utils.r")
polypharm <- read.delim(file = "POLYPHARM/POLYPHARM.txt",
                        as.is = TRUE,
                        header = TRUE)
names(polypharm) <- tolower(names(polypharm))
mhv4.label <- c("0", "1-5", "6-14", "> 14")
inptmhv3.label <- c("0", "1", "> 1")
group.label <- c("CFC", "ABD", "FOS")
urban.label <- c("Urban", "Rural")
numprim.label <- inptmhv3.label
gender.label <- c("Female", "Male")
race.label <- c("White", "Black", "Other")
ethnic.label <- c("Non-Hispanic", "Hispanic")
  
polypharm <- within(polypharm, {
  polypharmacy <- noYes(polypharmacy)
  mhv4 <- factor(mhv4, levels = z3, labels = mhv4.label)
  inptmhv3 <- factor(inptmhv3, levels = z2, labels = inptmhv3.label)
  group <- factor(group, levels = o3, labels = group.label)
  urban <- factor(urban, levels = z1, labels = urban.label)
  comorbid <- noYes(comorbid)
  anyprim <- noYes(anyprim)
  numprim <- factor(numprim, levels = z2, labels = numprim.label)
  gender <- factor(gender, levels = z1, labels = gender.label)
  race <- factor(race, levels = z2, labels = race.label)
  ethnic <- factor(ethnic, levels = z1, labels = ethnic.label)
})
polypharm <- polypharm[order(polypharm$id), ]
rownames(polypharm) <- NULL
dim(polypharm)
summary(polypharm)

save("polypharm", file = "../data/polypharm.rda")
