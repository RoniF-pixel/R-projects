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

# Summary stats
stroop_long %>%
  group_by(condition) %>%
  summarise(mean_rt = mean(rt_ms),
            sd_rt = sd(rt_ms),
            n = n())

# Boxplot
ggplot(stroop_long, aes(x = condition, y = rt_ms, fill = condition)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Reaction Time by Condition",
       y = "Reaction Time (ms)", x = "Condition") +
  scale_fill_brewer(palette = "Set2")


# Wide format needed for paired t-test
t.test(stroop_data$Congruent, stroop_data$Incongruent, paired = TRUE)
