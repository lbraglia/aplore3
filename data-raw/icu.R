
source("utils.r")
icu <- read.table(file = "ICU/ICU.txt",
                      as.is = TRUE,
                      header = TRUE)
names(icu) <- tolower(names(icu))
names(icu)[14] <- "type"
sta.label <- c("Died","Lived")
gender.label <- c("Male", "Female")
race.label <- c("White","Black","Other")
ser.label <- c("Medical","Surgical")
type.label <- c("Elective","Emergency")
po2.label <- c("> 60","<= 60")
ph.label <- c(">= 7.25","< 7.25")
pco.label <- c("<= 45", "> 45")
bic.label <- c(">= 18", "< 18")
cre.label <- c("≤ 2.0", "> 2.0")
loc.label <- c("No coma or deep stupor", "Deep stupor", "Coma")

icu <- within(icu, {
  sta <- factor(sta, levels = z1, labels = sta.label)
  gender <- factor(gender, levels = z1, labels = gender.label)
  race <- factor(race, levels = o3, labels = race.label)
  ser <- factor(ser, levels = z1, labels = ser.label)
  can <- noYes(can)
  crn <- noYes(crn)
  inf <- noYes(inf)
  cpr <- noYes(cpr)
  pre <- noYes(pre)
  type <- factor(type, levels = z1, labels = type.label)
  fra <- noYes(fra)
  po2 <- factor(po2, levels = z1, labels = po2.label)
  ph <- factor(ph, levels = z1, labels = ph.label)
  pco <- factor(pco, levels = z1, labels = pco.label)
  bic <- factor(bic, levels = z1, labels = bic.label)
  cre <- factor(cre, levels = z1, labels = cre.label)
  loc <- factor(loc, levels = z2, labels = loc.label)
})
icu <- icu[order(icu$id), ]
rownames(icu) <- NULL
summary(icu)

save("icu", file = "../data/icu.rda")
