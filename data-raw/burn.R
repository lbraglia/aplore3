
burn <- read.table(file = "BURN/BURN1000.txt",
                     as.is = TRUE,
                     header = TRUE)
names(burn) <- tolower(names(burn))
names(burn)[6] <- "race"
burn$death <- factor(burn$death, levels = 0:1, labels = c("Alive","Dead"))
burn$gender <- factor(burn$gender, levels = 0:1, labels = c("Female","Male"))
burn$race <- factor(burn$race, levels = 0:1, labels = c("Non-White","White"))
burn$inh_inj <- factor(burn$inh_inj, levels = 0:1, labels = c("No","Yes"))
burn$flame <- factor(burn$flame, levels = 0:1, labels = c("No","Yes"))
burn <- burn[order(burn$id), ]
save("burn", file = "../data/burn.rda")
