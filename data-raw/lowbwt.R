
source("utils.r")
lowbwt <- read.table(file = "LOWBWT/LOWBWT.txt",
                      as.is = TRUE,
                      header = TRUE)
names(lowbwt) <- tolower(names(lowbwt))
low.label <- c(">= 2500 g","< 2500 g")
race.label <- c("White", "Black", "Other")
no.one.twoetc <- c("None", "One", "Two, etc.")

lowbwt <- within(lowbwt, {
  low <- factor(low, levels = z1, labels = low.label)
  race <- factor(race, levels = o3, labels = race.label)
  smoke <- noYes(smoke)
  ptl <- factor(ifelse(ptl > 2, 2, ptl), levels = z2, labels = no.one.twoetc)
  ht <- noYes(ht)
  ui <- noYes(ui)
  ftv <- factor(ifelse(ftv > 2, 2, ftv), levels = z2, labels = no.one.twoetc)
})
lowbwt <- lowbwt[order(lowbwt$id), ]
rownames(lowbwt) <- NULL

save("lowbwt", file = "../data/lowbwt.rda")
