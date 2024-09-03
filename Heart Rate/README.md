# Data Description:
Millions of people develop some sort of heart disease every year and heart disease is the biggest killer of both
men and women in the United States and around the world. Statistical analysis has identified many risk
factors associated with heart disease such as age, blood pressure, total cholesterol, diabetes, hypertension,
family history of heart disease, obesity, lack of physical exercise, etc. In this project, we’re going to run
statistical tests and regression models using the Cleveland heart disease dataset to assess one particular factor
– maximum heart rate one can achieve during exercise considering 13 features like age, sex, and so on.
We have 303 observations and the features are:
- age: Age, sex: Sex.
- cp: Cerebral palsy (CP) is a group of movement disorders.
- trestbps: resting blood pressure (on admission to the hospital).
- chol: serum cholestoral.
- fbs: fasting blood sugar > 120 mg/dl.
- restecg: Resting electrocardiographic measurement (0 = normal, 1 = having ST-T wave abnormality, 2 = showing probable or definite left ventricular hypertrophy by Estes' criteria).
- thalach: maximum heart rate achieved.
- exang: exercise induced angina.
- oldpeak: ST depression induced by exercise relative to rest.
- slope: The ST segment shift relative to exercise-induced increments in heart rate.
- ca: number of major vessels (0-3) colored by flourosopy.
- thal: A blood disorder called thalassemia.
- class: diagnosis of heart disease. #### target variable
# Objective:
We want to know the effect that maximum heart rate, age, and sex have on the
probability that a person will have a heart disease in the next year. The model will also tell us what the
remaining effect of maximum heart rate is after we control or adjust for the effects of the other two effectors.

# Methodology:
- Collect data from (UC Irvine)[https://archive.ics.uci.edu/dataset/45/heart+disease]
- EDA: statistical tests, univariate analysis.
- Pre-processing: data cleaning, feature engineering, encoding.
- ML training:  Multiple Logistic Regression.
- Testing metrics: accuracy, classification error rate, AUC, confusion matrix.
- Results
# EDA:
- We noticed that the outcome variable class has more than two levels. According to the codebook, any non-zero
values can be coded as an “event.” We create a new variable called hd to represent a binary 1/0 outcome.
- We also convert sex into a ‘factor’.
- Depending on the type of the data (i.e., continuous or categorical), we use
t-test or chi-squared test to see which predictors are related to heart disease.
- The plots and the statistical tests both confirmed that all the three variables age, sex, and maximum heart rate are significantly associated
with hd.
# Model:
Multiple Logistic Regression: Accuracy= 0.709,  Classification Error= 0.29,  AUC= 0.706. 
# Results:
After these metrics are calculated, we’ll see (from the logistic regression OR table) that older age, being male
and having a lower max heart rate are all risk factors for heart disease. We can also apply our model to
predict the probability of having heart disease. For a 45 years old female who has a max heart rate of 150,
our model generated a heart disease probability of 0.177 indicating low risk of heart disease.

