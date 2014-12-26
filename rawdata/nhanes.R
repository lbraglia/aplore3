
source("utils.r")
nhanes <- read.delim(file = "NHANES/NHANES.txt",
                      as.is = TRUE,
                      header = TRUE)
names(nhanes) <- tolower(names(nhanes))
gender.label <- c("Male","Female")
marstat.label <- c("Married", "Widowed", "Divorced", "Separated",
                   "Never Married", "Living Together") 

nhanes <- within(nhanes, {
  gender <- factor(gender, levels = z1, labels = gender.label)
  marstat <- factor(marstat, levels = o6, labels = marstat.label)
  vigwrk <- yesNo(vigwrk)
  modwrk <- yesNo(modwrk)
  wlkbik <- yesNo(wlkbik)
  vigrecexr <- yesNo(vigrecexr)
  modrecexr <- yesNo(modrecexr)
  obese <- noYes(obese)
})
nhanes <- nhanes[order(nhanes$id), ]
rownames(nhanes) <- NULL
dim(nhanes)
summary(nhanes)

save("nhanes", file = "../data/nhanes.rda", compress = "bzip2")
