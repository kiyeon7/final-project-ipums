# Load libraries every session

library(readxl)
library(tidyverse)
library(ipumsr)
library(rstanarm)
library(sjlabelled)


class(sample$IND)[1]

# returns: "haven_labelled"

haven <- sample %>%
  select(IND) %>%
  mutate(ind = as_factor(IND))

class(sample$IND)

# returns: "factor"




# Read in data

if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. 
                             It can be installed using the following command: install.packages('ipumsr')")

ddi <- read_ipums_ddi("raw_data_3/usa_00003.xml")
x <- read_ipums_micro(ddi)

# Save file locally. Comment out afterwards.
saveRDS(data, "raw_data_3/anyname.rds")
rds_data <- read_rds("raw_data_3/anyname.rds")


# Use smaller sample for faster loading
small <- x %>%
  slice_sample(n = 1000)
