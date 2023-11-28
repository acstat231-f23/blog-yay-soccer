# data wrangling : first dataset
library(tidyverse)
library(readr)

# import first data set
soccer_data1 <- read_delim("data/transfermarkt_fbref_201718.csv", delim = ";", 
                           escape_double = FALSE, trim_ws = TRUE, show_col_types = FALSE)
view(soccer_data1)

# wrangle data
soccer_data2 <- soccer_data1 |>
  select(player, nationality, squad, league) |>
  filter(league %in% c("Premier League", "La Liga", "Bundesliga"))

# save new data file
write.csv(soccer_data2, "wrangled_dataset.csv", row.names = FALSE)
