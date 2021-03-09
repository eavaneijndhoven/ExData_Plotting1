# Load packages
library(dplyr)
library(naniar)
library(stringr)
library(lubridate)

# Load data
source("data.R")

# Make plots
for(i in 1:4) {
  source(paste0("plot",i,".R"))
}
