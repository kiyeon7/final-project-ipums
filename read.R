# Load libraries every session

library(readxl)
library(tidyverse)
library(ipumsr)
library(rstanarm)

# Read in data

if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. 
                             It can be installed using the following command: install.packages('ipumsr')")

ddi <- read_ipums_ddi("raw_data/usa_00002.xml")
raw_data <- read_ipums_micro(ddi)

# Save file locally. Comment out afterwards.

# saveRDS(data, "raw_data/anyname.rds")
# rds_data <- read_rds("raw_data/anyname.rds")

# Use smaller sample for faster loading

# small <- x %>% 
#   slice_sample(n = 1000)