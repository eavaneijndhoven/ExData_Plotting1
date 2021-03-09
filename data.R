# Load packages
library(dplyr)
library(naniar)
library(stringr)
library(lubridate)

# Download zip file and unzip
filename <- "household_power_consumption.zip"
if (!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, filename, method = "curl")
  unzip(filename)
}

# Load file, change ? to NA, subset to only 2007-02-01 and 2007-02-02 dates
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";") %>%
  mutate_all(funs(replace(., . == "?", NA))) %>%
  mutate(Weekday = wday(Date, label = TRUE),
         datetime = strptime(paste0(Date, Time), format="%d/%m/%Y %H:%M:%S"),
         Date = as.Date(Date,  "%d/%m/%Y")) %>%
  filter(Date == "2007-02-01" | Date == "2007-02-02") 
