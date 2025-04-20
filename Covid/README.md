# Data Description:
This analysis uses advanced statistical modeling to explore
 temporal dynamics and subgroup differences in mental health outcomes based on this large-scale repeated
 cross-sectional dataset.
 
We have 16795 observations and the features are:
 - indicator: What the data measures (e.g., symptoms of anxiety/depression)
 - group: Demographic level (e.g., national, by age, gender, etc.)
 - subgroup: Specific demographic (e.g., 18–29, female, Hispanic, etc.)
 - value: Reported percentage (%) with symptoms
 - low_ci: Lower confidence interval
 - high_ci: Upper confidence interval
 - week: Survey phase identifier
 - start_date: Start of survey phase
 - end_date: End of survey phase
 - time_numeric: Numeric representation of start date (for modeling)
 - We’re focusing on:
     - Only rows where indicator == "Symptoms of Anxiety Disorder or Depressive Disorder"
     - Rows with non-missing values for the value variable
     - 
# Objective:
We use generalized linear and additive models, mixed effects models, time series methods, multivariate
 techniques like PCA and MANOVA, and clustering to understand how mental health patterns evolved over
 time and across demographic subgroups.

# Methodology:
- Collect data from [National Center for Health Statistics- Anxiety and Depression](https://www.cdc.gov/nchs/covid19/pulse/mental-health.htm)

- EDA (Exploratory Data Analysis):

   - Time trend visualization using line plots.

   - Descriptive summaries of mental health indicators.

   - PCA and clustering to explore latent patterns and groupings.

# Pre-processing:

- Renamed and formatted variables for consistency.

- Converted date columns and encoded time numerically.

- Filtered data to focus on key indicators and removed missing values.

# Analysis & Results:

- LOESS and GAM models captured smooth nonlinear time trends.

- MANOVA revealed significant differences across subgroups.

- PCA reduced dimensionality and revealed grouping structure.

- Clustering identified demographic clusters with similar symptom patterns.

- Model diagnostics (residuals, QQ plots) confirmed reasonable model fit.





