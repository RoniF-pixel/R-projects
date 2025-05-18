# Build and Deploy a Parkinson Prediction Model Using R
## Overview
This project demonstrates the complete pipeline for building and evaluating a machine learning model to predict Parkinson's Disease using the UCI Parkinson’s dataset. The project was conducted in R and uses various statistical and machine learning techniques, including data preprocessing, exploratory data analysis, correlation analysis, feature importance, Principal Component Analysis (PCA), and a Random Forest classifier from the CORElearn package.

## About Parkinson's Disease
Parkinson's Disease is a progressive neurological disorder that predominantly affects movement. It is characterized by symptoms such as tremor, rigidity, slowness of movement, and postural instability. Early and accurate diagnosis is crucial to managing its progression effectively.

## Dataset Description
- Source: UCI Machine Learning Repository
- Observations: 195
- Features: 23 voice measurements + 1 target (status)
- Target Variable:
    - 1: Parkinson’s patient
    - 0: Healthy individual

The features include fundamental frequency measures (e.g., MDVP:Fo(Hz)), jitter and shimmer (measures of variation in voice), and nonlinear dynamical complexity measures (e.g., RPDE, D2, PPE).

## Project Objectives
- Perform exploratory data analysis (EDA) and visualize variable distributions
- Identify and interpret correlations and feature importance
- Apply Principal Component Analysis (PCA) for dimensionality reduction
- Build and evaluate a Random Forest classification model
- Report evaluation metrics such as accuracy, precision, recall, F1-score, and AUC

## EDA & Feature Engineering
- Missing Values: No missing data found
- Class Balance: 147 Parkinson’s patients vs 48 healthy controls
- Highly Correlated Features: Identified using findCorrelation() with a 0.9 cutoff
- Top Important Features (via randomForest): PPE, spread1, MDVP.Fo.Hz
- PCA: Applied to explore variance structure and reduce feature dimensionality

## Modeling
- Model Used: Random Forest (CORElearn::CoreModel)
- Train-Test Split: 70% training, 30% testing
- Evaluation Metrics: Accuracy, AUC, Precision, Recall, F1-Score

## Model Evaluation

| Metric    | Value                                  |
| --------- | -------------------------------------- |
| Accuracy  | \~92%                                  |
| AUC       | High (ROC indicates good separability) |
| Precision | High                                   |
| Recall    | High                                   |
| F1 Score  | High                                   |

Confusion matrices were generated for both actual and predicted test data. The model demonstrated robust classification performance.

## Findings & Conclusion
- Key Predictive Features: PPE, spread1, and MDVP.Fo(Hz)
- PCA Insights: PCA confirmed that a few principal components capture the majority of variance.
- Random Forest Results: Achieved high performance across all classification metrics.
- Clinical Implications: The model’s high recall and precision are crucial for reducing misdiagnosis and ensuring timely medical intervention.

This project shows that **machine learning models trained on voice data** can provide valuable diagnostic assistance in Parkinson’s Disease detection.
