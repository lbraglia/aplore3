
source("utils.r")
burn1000 <- read.table(file = "BURN/BURN1000.txt",
                     as.is = TRUE,
                     header = TRUE)
names(burn1000) <- tolower(names(burn1000))
names(burn1000)[6] <- "race"
death.labels <- c("Alive","Dead")
gender.labels <- c("Female","Male")
race.labels <- c("Non-White","White")

burn1000 <- within(burn1000, {
  death <- factor(death, levels = z1, labels = death.labels)
  gender <- factor(gender, levels = z1, labels = gender.labels)
  race <- factor(race, levels = z1, labels = race.labels )
  inh_inj <- noYes(inh_inj)
  flame <- noYes(flame)
})
burn1000 <- burn1000[order(burn1000$id), ]
rownames(burn1000) <- NULL
summary(burn1000)

save("burn1000", file = "../data/burn1000.rda")
