# install.packages("dplyr")
# install.packages("lubridate")
library(tidyr)
library(dplyr)
library(lubridate)

getwd()

setwd("/home/nguyenphuc/Documents/DA_LAB/NguyenDucNguyenPhuc_ITDSIU21108_Lab4")
data_metro_zip <- read.csv("data_metro_zip.csv", header = TRUE, stringsAsFactors = FALSE)
mean(data_metro_zip$Prices)

# View(data_metro_zip)


data_metro_zip %>% 
  summarize(missing_data = sum(is.na(data_metro_zip)))