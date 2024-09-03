# Data Description:
According to the World Health Organization (WHO) stroke is the 2nd leading cause of death globally,
responsible for approximately 11% of total deaths.
This data set is used to predict whether a patient is likely to get stroke based on the input parameters like
gender, age, various diseases, and smoking status. Each row in the data provides relevant information about
the patient.

We have 5110 observations or patients and the features are:
- id: unique identifier
- gender: "Male", "Female" or "Other"
- age: age of the patient
- hypertension: 0 if the patient doesn't have hypertension, 1 if the patient has hypertension
- heart_disease: 0 if the patient doesn't have any heart diseases, 1 if the patient has a heart disease
- ever_married: "No" or "Yes"
- work_type: "children", "Govt_jov", "Never_worked", "Private" or "Self-employed"
- Residence_type: "Rural" or "Urban"
- avg_glucose_level: average glucose level in blood
- bmi: body mass index
- smoking_status: "formerly smoked", "never smoked", "smokes" or "Unknown"
- stroke: 1 if the patient had a stroke or 0 if not

# Objective:
This project aims to investigate the effectiveness of three ML algorithms for the prediction of stroke.

# Methodology:
- Collect data from kaggle.com
- EDA: univariate analysis, multivariate analysis, correlation.
- Pre-processing: data cleaning, feature engineering, encoding, scaling, data split, oversampling, undersampling.
- ML training: Logistic Regression, Decision Tree, Random Forest.
- Testing metrics: accuracy, precision, recall, f1-score.
- Results

# EDA:
 We did Exploratory data analysis and it turned out that :
 
![stroke1](https://github.com/user-attachments/assets/43514125-358d-4893-8bce-756840eec33a)

- The dependent variable is highly imbalance. Observations for “No stroke” is 95%, and 5% for “stroke”.
- More patients that are older than 40 years seems to have stroke with little number of patients less than 40 years having stroke.
- The males in the data tend to have stroke at the age of over 40, while women tend to have stroke from age around 30s.
- The underweight patients are the least class that has stroke, followed by the healthy weight class.
- Stroke seems to occur in patients with overweight and obesity.
- Combination of patients that formerly smoked and those that smokes have stroke than those that never smoked.
- Patients with average glucose level higher than 150 and over 60 years old tends to have stroke.
- Patients who are married at a point in their life have stroke than those that have never been married.
- BMI is the least correlated with stroke, and age is the most correlated to stroke among the numerical features.

# Models:
- Logistic Regression:   Accuracy : 0.701,   Precision : 444,   Recall : 0.8,    f1 Score : 1.597
- Decision Tree:         Accuracy : 0.727,   Precision : 392,   Recall : 0.614,  f1 Score : 1.227
- Random Forest:         Accuracy : 0.757,   Precision : 342,   Recall : 0.571,  f1 Score : 1.141

# Results:
Precision and recall are indeed critical metrics in medical diagnosis, as false positive and false negative
predictions can have serious consequences. In the context of stroke prediction, it is important to accurately
identify stroke cases to ensure appropriate interventions and timely treatment.
The results of the models in terms of precision, recall, F1-score, indicate that they faced challenges in correctly
identifying stroke cases. This can be attributed to the significant class imbalance between non-stroke and
stroke instances in the test set, with a much larger number of non-stroke instances compared to stroke
instances. This class imbalance creates a bias in the models towards predicting the majority class, which in
this case is non-stroke.
Among the models, logistic regression stands out with a high recall of 0.78. This suggests that the model
was successful in correctly identifying a large proportion of the actual stroke cases in the dataset. However,
the low precision value indicates that the model also classified a considerable number of non-stroke cases as
strokes, resulting in a high rate of false positive predictions.
On the other hand, the remaining models, including decision tree, and random forest, demonstrate relatively
lower values for precision, recall, and F1-score. These models seem to perform better in predicting non-stroke
cases accurately rather than identifying stroke cases.
In conclusion, the results suggest that logistic regression and random forest have potential for predicting
strokes, with random forest showing the most promising performance. These findings have implications
for healthcare providers, as accurate prediction of strokes can help in early identification, prevention, and
appropriate allocation of resources for stroke management.



  
