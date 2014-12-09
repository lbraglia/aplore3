
source("utils.r")

## BURN1000
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
dim(burn1000)
summary(burn1000)

save("burn1000", file = "../data/burn1000.rda", compress = "bzip2")

## BURN_EVAL_1
burn_eval_1 <- read.table(file = "BURN/BURN_EVAL_1.txt",
                     as.is = TRUE,
                     header = TRUE)
names(burn_eval_1) <- tolower(names(burn_eval_1))
names(burn_eval_1)[6] <- "race"

burn_eval_1 <- within(burn_eval_1, {
  death <- factor(death, levels = z1, labels = death.labels)
  gender <- factor(gender, levels = z1, labels = gender.labels)
  race <- factor(race, levels = z1, labels = race.labels )
  inh_inj <- noYes(inh_inj)
  flame <- noYes(flame)
})
burn_eval_1 <- burn_eval_1[order(burn_eval_1$id), ]
rownames(burn_eval_1) <- NULL
dim(burn_eval_1)
summary(burn_eval_1)

save("burn_eval_1", file = "../data/burn_eval_1.rda", compress = "bzip2")

## BURN_EVAL_2
burn_eval_2 <- read.table(file = "BURN/BURN_EVAL_2.txt",
                     as.is = TRUE,
                     header = TRUE)
names(burn_eval_2) <- tolower(names(burn_eval_2))
names(burn_eval_2)[6] <- "race"

burn_eval_2 <- within(burn_eval_2, {
  death <- factor(death, levels = z1, labels = death.labels)
  gender <- factor(gender, levels = z1, labels = gender.labels)
  race <- factor(race, levels = z1, labels = race.labels )
  inh_inj <- noYes(inh_inj)
  flame <- noYes(flame)
})
burn_eval_2 <- burn_eval_2[order(burn_eval_2$id), ]
rownames(burn_eval_2) <- NULL
dim(burn_eval_2)
summary(burn_eval_2)

save("burn_eval_2", file = "../data/burn_eval_2.rda", compress = "bzip2")

## BURN13M
burn13m <- read.table(file = "BURN/BURN13M.txt",
                     as.is = TRUE,
                     header = TRUE)
names(burn13m) <- tolower(names(burn13m))
names(burn13m)[8] <- "race"

burn13m <- within(burn13m, {
  death <- factor(death, levels = z1, labels = death.labels)
  gender <- factor(gender, levels = z1, labels = gender.labels)
  race <- factor(race, levels = z1, labels = race.labels )
  inh_inj <- noYes(inh_inj)
  flame <- noYes(flame)
})
burn13m <- burn13m[order(burn13m$pair, burn13m$pairid), ]
rownames(burn13m) <- NULL
dim(burn13m)
summary(burn13m)

save("burn13m", file = "../data/burn13m.rda", compress = "bzip2")
