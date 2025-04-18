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


# The dataset includes average RTs per person for congruent and incongruent trials
# Convert to long format for analysis

stroop_long <- stroop_data %>%
  pivot_longer(cols = c(Congruent, Incongruent),
               names_to = "condition",
               values_to = "rt_sec")

# Convert seconds to milliseconds
stroop_long <- stroop_long %>%
  mutate(rt_ms = rt_sec * 1000,
         condition = factor(condition, levels = c("Congruent", "Incongruent")))

