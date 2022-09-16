#load data and libs

#this is all I think I need for now
library(tidyverse)

url <- "https://projects.fivethirtyeight.com/nfl-api/nfl_elo_latest.csv"

DF <- read_csv(url)

#I first want to find the current weeks data

Date_Check = c(Sys.Date(), Sys.Date() + 2,  Sys.Date() + 3, 
               Sys.Date() + 4, Sys.Date() + 5, Sys.Date() + 6,
               Sys.Date() + 7)

#now just filter to get the next weeks data
DF.current <- DF %>% 
  filter(date %in% Date_Check)

