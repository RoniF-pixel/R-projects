# The Effect of Cognitive Interference on Reaction Time: A Stroop Task Analysis

## Overview
This project investigates cognitive interference using the classic Stroop Task. Participants were asked to respond to congruent and incongruent color-word stimuli, and their reaction times were analyzed to determine whether incongruent conditions significantly impact cognitive processing speed.

## Dataset
- Source: [Daniel Lakens' GitHub Repository](https://github.com/Lakens/Stroop)
- Sample: 132 participants
- Variables:

    - Congruent: Mean reaction time (seconds) when word and color match
    - Incongruent: Mean reaction time (seconds) when word and color conflict
 
## Methodology
- Exploratory Data Analysis: Descriptive statistics and visualization (boxplot)

- Data Wrangling:
    - Reshaped to long format using pivot_longer()
    - Converted reaction time to milliseconds

- Statistical Test:
    - Paired-sample t-test comparing congruent vs. incongruent conditions

- Visualization:
    - Boxplot comparing reaction times by condition using ggplot2

## Results
- Participants had significantly longer reaction times under incongruent conditions (p < 0.05)
- The findings replicate the classic Stroop Effect, supporting the hypothesis that conflicting information increases cognitive load and delays response.

## Technologies Used (R)
- tidyverse for data manipulation and visualization
- ggplot2 for plotting
- dplyr, tidyr for wrangling
- t.test() for paired comparisons
