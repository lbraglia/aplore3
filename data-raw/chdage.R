
source("utils.r")
chdage <- read.table(file = "CHDAGE/CHDAGE.txt",
                     as.is = TRUE,
                     header = TRUE)
names(chdage) <- tolower(names(chdage))
agecl <- c("20-39","30-34","35-39","40-44","45-49","50-54","55-59","60-69")

chdage <- within(chdage, {
  agegrp <- factor((c(rep(1,29), rep(2:7, each = 5), rep(8, 10) ))[age],
                   levels = 1:8,
                   labels = agecl)
  chd <- noYes(chd)
})
chdage <- chdage[order(chdage$id), c(1,2,4,3)]
rownames(chdage) <- NULL
dim(chdage)
summary(chdage)

save("chdage", file = "../data/chdage.rda")
