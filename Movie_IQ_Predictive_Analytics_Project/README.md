# MovieIQ – Predictive Analytics on Film Success

##  Project Overview

**MovieIQ** is a predictive analytics project that analyzes historical movie data to identify financial trends and predict potential movie revenue and success.

The project combines **Python, Pandas, Scikit-learn, Machine Learning, and Streamlit** to provide data-driven insights for movie investment and planning.

##  Business Problem

Movie production involves significant financial risk. Production companies need to understand:

* Which movie characteristics are associated with higher revenue?
* Which genres provide better ROI?
* Can potential movie revenue be estimated?
* Can a movie be classified as financially successful?

##  Objectives

* Analyze movie financial performance.
* Identify important revenue and profitability patterns.
* Predict potential movie revenue.
* Predict whether a movie is likely to be financially successful.
* Deploy the predictive solution through an interactive Streamlit application.

##  Dataset

The dataset contains **2,000 movie records** with the following initial features:

* Budget
* Revenue
* Popularity
* Runtime
* Vote Average
* Title
* Genres

### Feature Engineering

Created:

* **Profit** = Revenue − Budget
* **ROI** = Profit / Budget
* **Profit Margin**
* **Success** = Revenue > Budget

##  Key EDA Findings

* **Profit** has the strongest correlation with revenue: **0.919**
* **Budget** has a strong positive correlation with revenue: **0.760**
* **Popularity** has a very weak correlation with revenue: **0.014**
* **Vote Average** has almost no linear correlation with revenue: **−0.005**
* **Horror** had the highest average ROI: approximately **83.3%**
* **Drama** had the highest success rate: approximately **82.2%**

##  Machine Learning

### Revenue Prediction

Tested:

* Linear Regression
* Random Forest Regression
* Log-Transformed Linear Regression

**Selected Model: Linear Regression**

Performance:

* **R²:** 0.5894
* **MAE:** $66.66M
* **RMSE:** $87.37M

### Movie Success Classification

Tested:

* Logistic Regression
* Random Forest Classifier

**Selected Model: Random Forest Classifier**

At the selected **0.60 probability threshold**:

* Accuracy: **81.5%**
* Precision: **81.7%**
* Recall: **99.4%**
* F1 Score: **89.7%**
* Unsuccessful Recall: **6.5%**

> **Limitation:** The classifier has limited ability to identify unsuccessful movies because the dataset is imbalanced and revenue-derived variables cannot be used as predictive features without causing target leakage.

##  Streamlit Application

The Streamlit application allows users to enter:

* Budget
* Popularity
* Runtime
* Vote Average
* Genre

and receive:

* **Predicted Revenue**
* **Success Probability**
* **Successful / Unsuccessful classification**

The application also includes safeguards for unrealistic negative revenue predictions.

##  Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Scikit-learn
* Streamlit
* Joblib
* Jupyter Notebook

##  Project Workflow

```text
Data Collection
      ↓
Data Cleaning
      ↓
EDA
      ↓
Feature Engineering
      ↓
Feature Selection & Preprocessing
      ↓
Train/Test Split
      ↓
Regression Modeling
      ↓
Classification Modeling
      ↓
Model Evaluation
      ↓
Threshold Analysis
      ↓
Business Recommendations
      ↓
Streamlit Deployment
```

##  Business Value

MovieIQ can help production or investment teams use historical data to:

* Estimate potential revenue.
* Compare financial performance across genres.
* Understand budget–revenue relationships.
* Assess potential financial success.
* Support early-stage movie planning and investment decisions.

##  Limitations

The models are **decision-support tools, not guaranteed predictors**. Revenue prediction has substantial error, and the classification model has limited ability to identify unsuccessful movies.

##  Author

** Challa Harika **
Data Analyst Intern


