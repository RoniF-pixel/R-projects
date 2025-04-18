"cognitive "
#libraries
library(tidyverse)
library(ggplot2)

#the dataset
# Load dataset directly from GitHub
setwd("C:/Users/0&1/OneDrive/Documents/R-projects/R-projects/Cognitive Load & Decision-Making Using Reaction Time Data")
stroop_data = read.csv("stroop.csv")

# Check structure
glimpse(stroop_data)
