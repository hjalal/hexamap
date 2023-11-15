# ==================
# overdose mortality example
library(devtools)
library(tidyverse)
# data0 <-read.delim(file = "wonder_alc_mort_men_1999_2018_40_70.txt",
#                    sep = "\t", stringsAsFactors = F)
# data <- data0 %>% mutate(mrate = 100000 * Deaths / Population)
data0 <-read.delim(file = "cdc_wonder_white_male_x40_x44_1999_2018.txt",
                   sep = "\t", stringsAsFactors = F)
data <- data0 %>%
  mutate(age = as.numeric(Single.Year.Ages.Code),
                         pop = as.numeric(Population),
                         mrate = 100000 * Deaths / pop) %>%
  filter(age >= 15 & age <= 85)

data <- data %>% select(Year, age, mrate) %>%
  #filter(age >= 15 & age <= 70) %>%
  pivot_wider(id_cols = age, names_from = Year, values_from = mrate)
# data <- read.csv(file = "CDC_Wonder_Alcohol.csv",
#                   header = T)
#data <- as.matrix(data[-c(1:40, 81:84),-1])
data <- as.matrix(data[,-1])
data[is.na(data)] <- 0

min(data)
pdf("hexamap_drug_od_white_men.pdf", width= 5, height = 5)

       hexamap(data = data,  #matrix: age as rows, period as columns
               first_age = 15,
               first_period = 1999,
               interval = 1,
               colorbar_scale = "Normal",
               first_age_isoline = 15,
               first_period_isoline = 2000,
               isoline_interval = 5,
               #color_scale = c(0,40),
               wrap_cohort_labels = T)

# Close the pdf file
dev.off()
