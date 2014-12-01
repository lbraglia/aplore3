
source("utils.r")
aps <- read.table(file = "APS/APS.txt",
                      as.is = TRUE,
                      header = TRUE)
names(aps) <- tolower(names(aps))
place.label <- c("Outpatient",
                 "Day Treatment",
                 "Intermediate Residential",
                 "Residential")
place3.label <- c("Outpatient or Day Treatment",
                  "Intermediate Residential",
                  "Residential")
race.label <- c("White","Non-white")
gender.label <- c("Female", "Male")
neuro.label <- c("None", "Mild", "Moderate", "Severe")
emot.label <- c("Not Severe","Severe")
danger.label <- c("Unlikely","Possible", "Probable","Likely")
elope.label <- c("No Risk", "At Risk")

aps <- within(aps, {
  place <- factor(place, levels = z3, labels = place.label)
  place3 <- factor(place3, levels = z2, labels = place3.label)
  race <- factor(race, levels = z1, labels = race.label)
  gender <- factor(gender, levels = z1, labels = gender.label)
  neuro <- factor(neuro, levels = z3, labels = neuro.label)
  emot <- factor(emot, levels = z1, labels = emot.label)
  danger <- factor(danger, levels = z3, labels = danger.label)
  elope <- factor(elope, levels = z1, labels = elope.label)
  custd <- noYes(custd)
  viol <- noYes(viol)
})
aps <- aps[order(aps$id), ]
rownames(aps) <- NULL

save("aps", file = "../data/aps.rda")
