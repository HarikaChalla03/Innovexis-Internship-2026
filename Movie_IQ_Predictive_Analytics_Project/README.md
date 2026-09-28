#  MovieIQ – Predictive Analytics on Film Success

##  Project Overview

MovieIQ is a predictive analytics project designed to analyze historical movie characteristics and estimate the likelihood of a movie achieving commercial success.

The project combines **data analysis, exploratory data analysis, statistical validation, machine learning, and business-oriented insights** to understand which movie characteristics are associated with successful outcomes.

---

##  Business Problem

Film production involves significant financial risk, and movie performance can be influenced by multiple factors such as budget, genre, ratings, popularity, and other movie characteristics.

The objective of MovieIQ is to analyze historical movie data and determine whether these characteristics can provide useful signals for estimating movie success before release.

---

##  Business Objective

The project aims to:

* Identify factors associated with movie success.
* Analyze patterns in successful and unsuccessful movies.
* Compare different predictive approaches.
* Estimate the probability of movie success.
* Demonstrate how historical movie data could support early-stage decision-making.

---

##  Dataset

The dataset contains historical movie-level information used for exploratory analysis and predictive modeling.

Key variables include movie characteristics and performance-related attributes used to understand relationships with the target success measure.

---

##  Project Workflow

```text
Raw Movie Data
      ↓
Data Cleaning
      ↓
Data Validation
      ↓
Exploratory Data Analysis
      ↓
Feature Analysis
      ↓
Train/Test Split
      ↓
Model Development
      ↓
Model Evaluation
      ↓
Success Prediction
      ↓
Business Recommendations
```

---

##  Data Preparation

The data preparation process included:

* Handling missing values
* Removing duplicate records
* Checking data types
* Reviewing outliers and unusual values
* Validating numerical variables
* Preparing features for modeling
* Defining the movie success target

---

##  Exploratory Data Analysis

The analysis focused on understanding:

* Distribution of movie success
* Relationship between budget and revenue
* Genre-level performance
* Ratings and movie success
* Popularity-related patterns
* Relationships between movie characteristics and commercial outcomes

### Key Questions

1. What characteristics are associated with successful movies?
2. Does higher budget necessarily result in higher success?
3. Which movie categories show stronger performance?
4. Which variables provide useful predictive signals?
5. Can historical movie characteristics help estimate future success?

---

##  Predictive Modeling

Two regression approaches were evaluated:

* Linear Regression
* Random Forest Regression

### Model Performance

| Model             |    R² |
| ----------------- | ----: |
| Linear Regression | 0.589 |
| Random Forest     | 0.544 |

The results indicate that the available features explain a meaningful portion of the variation in the target variable, while also showing that movie success is influenced by factors beyond the variables available in this dataset.

---

##  Success Analysis

Based on the selected success definition and analysis, approximately **80.7% of the movies in the analyzed dataset were classified as successful**.

A success threshold of **0.60** was used for the prediction framework.

> Note: The threshold and success classification are project-specific analytical assumptions and should be validated against business objectives before being used in a real production environment.

---

##  Key Insights

### 1. Movie success is influenced by multiple factors

No single movie characteristic completely explains commercial performance. A combination of movie attributes provides a more useful analytical perspective.

### 2. Budget alone is not sufficient

Higher production investment does not automatically guarantee successful performance.

### 3. Historical patterns can provide predictive signals

Machine learning models can identify relationships within historical movie data that may help estimate future outcomes.

### 4. Model performance has limitations

The model does not explain all variation in movie performance, indicating that additional variables could improve prediction quality.

---

##  Business Use Case

A production company could use a similar analytical solution during the early planning stage of a movie to:

* Evaluate potential project characteristics.
* Compare a proposed movie against historical patterns.
* Identify potential risk factors.
* Support scenario analysis.
* Prioritize further market research.

The model should be treated as a **decision-support tool rather than a guarantee of movie performance**.

---

##  Example Future Use

A new movie could be entered into the prediction workflow using characteristics such as:

```text
Genre
Budget
Rating
Popularity
Other available movie attributes
        ↓
MovieIQ Prediction Model
        ↓
Predicted Success Score
        ↓
Success / Risk Classification
```

This would allow the project to move from historical analysis toward a more practical **new-movie prediction workflow**.

---

##  Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-learn
* Jupyter Notebook
* Exploratory Data Analysis
* Machine Learning
* Data Visualization

---

##  Repository Structure

```text
movieiq-predictive-analytics-film-success/
│
├── data/
├── notebooks/
├── src/
├── images/
├── dashboard/
├── requirements.txt
└── README.md
```

---

##  Future Improvements

* Add more movie and market-level features.
* Include release date and seasonality.
* Add marketing/spend-related variables.
* Test additional machine learning models.
* Perform hyperparameter tuning.
* Improve feature engineering.
* Build an application for entering new movie details.
* Add model explainability.
* Deploy the prediction application.

---

##  Author

**Harika**

Data Analyst | Power BI | SQL | Python | Predictive Analytics
