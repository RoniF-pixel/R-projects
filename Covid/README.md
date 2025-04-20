#  Mental Health Trends During COVID-19  
**Advanced Statistical Analysis of Anxiety and Depression Indicators in the U.S.**  
**Author**: Ronak Fathi

##  Overview  
This project uses advanced statistical methods to analyze trends in anxiety and depression symptoms during the COVID-19 pandemic using the CDC's Household Pulse Survey. We explored both national-level and subgroup-level patterns across time, applying models like GAM, LMM, and PCA to detect non-linear trends and demographic disparities.

---

##  Dataset Description  
- **Source**: [CDC Household Pulse Survey](https://www.cdc.gov/nchs/covid19/pulse/mental-health.htm)  
- **Scope**: U.S. adults reporting symptoms of anxiety and/or depression from 2020 to 2024  
- **Variables**:  
  - `indicator`: Type of symptom reported  
  - `group`: Demographic category (e.g., age, race)  
  - `subgroup`: Specific group (e.g., 18–29, Hispanic)  
  - `value`: Percent reporting symptoms  
  - `start_date` / `end_date`: Survey time window  
  - `time_numeric`: Encoded numeric date for modeling

---

##  Methodology  

- **Preprocessing**:
  - Cleaned variable names and handled missing data
  - Converted time into numeric format
  - Filtered only records related to anxiety/depression symptoms  

- **Exploratory Data Analysis**:
  - Visualized national trends with time series plots
  - Identified nonlinear trends, seasonal effects, and possible outliers  

- **Modeling & Statistical Analysis**:
  - 📉 **GLM**: Modeled linear time trend; found significant increase over time  
  - 📈 **GAM**: Captured flexible, nonlinear patterns in national-level trends  
  - 👥 **LMM**: Modeled subgroup-specific symptom trajectories with random effects  
  - ⏱️ **LOESS**: Visualized local trend fluctuations over weeks  
  - 🧪 **MANOVA**: Confirmed significant differences across demographic subgroups  
  - 📦 **PCA**: Reduced dimensionality and identified underlying symptom patterns  
  - 🔗 **Clustering**: Grouped subgroups with similar temporal response profiles  

- **Model Diagnostics**:
  - Plotted residuals, Q-Q, and Cook's distance for GLM
  - Found some non-linearity and heteroscedasticity, supporting need for GAM

---

##  Key Findings

- **Symptom rates peaked** early in the pandemic and declined by 2024, though nonlinearly  
- **Subgroups (e.g., age, race)** showed differing baseline levels and trends  
- **GAM and LOESS** provided smoother, more accurate trend representations  
- **LMM** revealed group-level differences not visible in fixed-effect models  
- **PCA** showed PC1 linked to symptom severity, PC2 to variability over time  
- **K-means clustering** revealed demographic groupings with shared mental health trajectories  
- **MANOVA** confirmed that symptom trends were significantly different across age and race categories





