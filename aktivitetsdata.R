library(haven)
library(dplyr)
X16_01_2019_karin_Vasket_Solneset_og_Gyllenborg_fysisk_form_01_02_1 <- read_sav("C:/Users/awi027/Downloads/16.01 2019 karin Vasket Solneset og Gyllenborg fysisk form 01.02_1.sav")

akt.data <- X16_01_2019_karin_Vasket_Solneset_og_Gyllenborg_fysisk_form_01_02_1

colnames(akt.data)

t.test(akt.data$Counts_skoletid, akt.data$Counts_skoletid2, paired = TRUE)

length(which(is.na(akt.data$Counts_skoletid)))         

førstetrinn2 <- akt.data %>% 
  filter(trinn == 1)
