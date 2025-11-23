# BIOS Scraping Example  --------------------------------------------------

install.packages("rvest")
install.packages("dplyr")
install.packages("stringr")
install.packages("writexl")

# Direct Dataframe Option
library(rvest)
library(dplyr)
library(stringr)

url <- "https://uwbadgers.com/sports/mens-basketball/roster"

page <- read_html(url)

roster <- page %>%
  html_element("table") %>%      
  html_table()                   

roster

#Excell File Option

library(writexl)
write_xlsx(roster, "mens_basketball_roster.xlsx")


