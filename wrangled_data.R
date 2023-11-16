# data wrangling : first dataset
library(tidyverse)

# import first data set
soccer_data1 <- read.csv("data/transfermarkt_fbref_201718")
view(soccer_data1)

# wrangle data
soccer_data2 <- soccer_data1

# save new data file
write.csv(soccer_data2, "wrangled_dataset.csv", row.names = FALSE)