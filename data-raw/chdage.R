chdage <- read.table(file = "CHDAGE/CHDAGE.txt",
                     as.is = TRUE,
                     header = TRUE)
names(chdage) <- tolower(names(chdage))
chdage$chd <- factor(chdage$chd, levels = 0:1, labels = c("No","Yes"))
save("chdage", file = "../data/chdage.rda")
