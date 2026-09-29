#  Innovexis Internship 2026 — Data Analytics Portfolio

<p align="center">

### Data Analytics | Business Intelligence | Power BI | SQL | Python | Excel

A collection of end-to-end data analytics projects covering **business intelligence, exploratory data analysis, SQL analytics, financial analytics, customer analytics, operations analytics, predictive analytics, and interactive dashboards**.

</p>

---

##  About This Repository

This repository contains my work completed and developed during my **Data Analytics internship journey at Innovexis**, along with a portfolio of practical analytics projects.

The projects demonstrate my ability to move from:

**Raw Data → Data Cleaning → Transformation → Analysis → Visualization → Business Investigation → Insights → Recommendations**

Rather than focusing only on dashboard creation, I used these projects to understand the **business problem behind the data**, identify meaningful patterns, investigate potential drivers, and translate analytical results into practical business recommendations.

---

#  What This Portfolio Demonstrates

### Technical Skills

* Power BI
* DAX
* Power Query
* SQL
* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Streamlit
* MySQL
* SQLite
* Excel
* Tableau
* Data Modeling
* Exploratory Data Analysis
* Statistical Analysis
* Machine Learning

### Business Analytics Skills

* KPI Development
* Business Problem Definition
* Business Investigation
* Trend Analysis
* Customer Analysis
* Financial Analysis
* Operational Analysis
* Revenue Analysis
* Risk Analysis
* Customer Satisfaction Analysis
* Geographic Analysis
* Segmentation
* Business Recommendations
* Data Storytelling

---

#  Project Portfolio

| #  | Project                                                                                                     | Domain                         | Primary Tools                     |
| -- | ----------------------------------------------------------------------------------------------------------- | ------------------------------ | --------------------------------- |
| 1  | [Food Wastage Management System](./Food_Wastage_Management_System)                                          | Operations / Sustainability    | Python, SQL, MySQL, Streamlit     |
| 2  | [Bloomberg-Style Financial Performance Analysis](./Bloomberg-Style%20Financial%20Performance%20Analysis)    | Financial Analytics            | Python, Excel, Power BI, DAX      |
| 3  | [Coffee Shop Sales & Performance Analysis](./Coffee%20Shop%20Sales%20%20Analysis)                           | Sales Analytics                | Power BI, DAX, Power Query, Excel |
| 4  | [Mutual Fund Performance & Risk Analytics](./Mutual%20Fund%20Analysis%20Project)                            | Financial Analytics            | Python, Power BI, Excel           |
| 5  | [PhonePe Pulse Data Visualization](./PhonePe%20Pulse%20Data%20Visualization%20and%20Exploration)            | Digital Payments               | Power BI, DAX, GeoJSON            |
| 6  | [Shopify Sales & Customer Retention Analysis](./Shopify%20Sales%20and%20Customer%20Retention%20Analysis)    | E-commerce Analytics           | Power BI, DAX, Excel              |
| 7  | [Hotel Booking Analysis](./Hotel%20Booking%20Analysis)                                                      | Hospitality Analytics          | Python, Pandas, EDA               |
| 8  | [British Airways Customer Satisfaction Analysis](./British%20Airways%20CSAT%20Analysis%20Project%20Details) | Customer Analytics             | Tableau, Excel, CSV               |
| 9  | [FedEx Logistics & Delivery Analysis](./FedEx)                                                              | Supply Chain Analytics         | Python, Pandas, EDA               |
| 10 | [Bird Species Observation & Conservation Analysis](./Bird_Species_Observation_Analysis)                     | Environmental Analytics        | Power BI, DAX, Power Query        |
| 11 | [Dubai Housing Market Analysis](./Dubai%20Housing%20Marketing%20Analysis)                                   | Real Estate Analytics          | Power BI, DAX, Power Query        |
| 12 | [MovieIQ Predictive Analytics](./Movie_IQ_Predictive_Analytics_Project)                                     | Predictive Analytics           | Python, Scikit-learn              |
| 13 | [Strava / Bellabeat Fitness Analysis](./Strava%20Fitness%20Bellabeat%20Smart%20Device%20Analysis)           | Fitness & Behavioral Analytics | Python, SQL, Power BI             |
| 14 | [iTunes Music Store SQL Analysis](./iTunes%20Music%20Store%20Analysis%20Project)                            | SQL / Customer Analytics       | MySQL, SQL                        |

---

#  Featured Projects

## 1.  Local Food Wastage Management System

**Domain:** Operations Analytics / Sustainability

**Tools:** Python, Pandas, MySQL, SQL, Streamlit

### Business Problem

Food providers may have surplus food while receivers have varying levels of demand. Without centralized visibility, it becomes difficult to understand food availability, provider contribution, claims, cancellations, and distribution patterns.

### Solution

Built an end-to-end management and analytics application covering:

**Provider → Food Listing → Claim → Claim Status → Distribution**

The application supports food listing management, filtering, CRUD operations, SQL analysis, and business monitoring.

### Key Analysis

* Food availability
* Provider contribution
* Receiver activity
* Claim activity
* Claim status
* Meal-type demand
* Food-type analysis
* City-level analysis
* Provider performance

### Key Findings

* Total listed food quantity: **25,894**
* Restaurant provider quantity: **6,923**
* Supermarket provider quantity: **6,696**
* Grocery provider quantity: **6,159**
* Catering provider quantity: **6,116**
* Completed claims: **339**
* Cancelled claims: **336**
* Pending claims: **325**
* Breakfast recorded the highest claim activity in the analyzed dataset.

### Business Recommendations

* Improve provider-receiver matching.
* Prioritize near-expiry food.
* Monitor completed, cancelled and pending claims.
* Investigate city-level supply-demand mismatches.
* Monitor frequently claimed meal and food categories.
* Track the complete listing-to-completed-claim process.

**Project:** [Food Wastage Management System](./Food_Wastage_Management_System)

---

# 2.  Bloomberg-Style Financial Performance & CFO Analytics

**Domain:** Financial Analytics

**Tools:** Python, Pandas, Excel, Power BI, DAX

### Business Problem

Management needs reliable financial reporting to understand revenue, profitability, product contribution, geography, operating expenses and the drivers behind financial performance.

### Objective

Analyze a Bloomberg-style synthetic financial dataset covering **FY2016–FY2023** and transform raw financial extracts into validated, analysis-ready data.

### Workflow

```text
Raw Financial Data
        ↓
Data Quality Assessment
        ↓
Python / Pandas Cleaning
        ↓
Financial Validation
        ↓
Excel Financial Model
        ↓
Power BI / DAX
        ↓
Driver Analysis
        ↓
Business Recommendations
```

### Analysis Areas

* P&L
* Revenue
* Gross Profit
* Gross Margin
* EBIT
* Net Income
* EPS
* Product performance
* Brand performance
* Distribution channels
* Geographic revenue
* Operating expenses
* OPEX / Revenue

### Key Findings

* Footwear was the largest product revenue contributor in the analyzed dataset.
* Apparel remained a significant revenue contributor.
* Revenue performance varied across products and years.
* Geographic reporting structures changed historically, requiring careful normalization.
* Revenue growth alone does not provide a complete picture of profitability.
* OPEX relative to revenue provides additional context for cost efficiency.
* Financial data validation is essential before management reporting.

### Data Quality

A verified FY2018 data-quality issue was identified and corrected before analysis.

Financial reconciliation checks were performed for:

* Revenue
* Gross Profit
* Gross Margin
* EBIT
* EPS
* Product
* Brand
* Channel
* OPEX

### Business Recommendations

* Monitor core product performance.
* Investigate product-market combinations.
* Monitor OPEX / Revenue.
* Analyze revenue together with Gross Margin and EBIT.
* Standardize geographic mappings.
* Maintain automated financial validation checks.

**Project:** [Bloomberg-Style Financial Performance Analysis](./Bloomberg-Style%20Financial%20Performance%20Analysis)

---

# 3.  Coffee Shop Sales & Performance Analysis

**Domain:** Sales Analytics

**Tools:** Power BI, DAX, Power Query, Excel

### Business Problem

The business needs visibility into sales trends, store performance, product contribution, transaction patterns and customer spending behavior.

### Dataset

Approximately **149K transaction records** were analyzed for January–June 2023.

### KPIs

* Total Sales
* Total Transactions
* Average Order Value
* Monthly Sales
* MoM Growth
* Product Sales
* Store Sales
* Category Contribution
* Hourly Sales

### Key Findings

* January–June sales: approximately **₹698.81K**
* June was the highest sales month: approximately **₹166.49K**
* February declined approximately **6.77%** compared with January.
* Sales increased strongly from March through June.
* Coffee sales: approximately **₹269.95K**
* Tea sales: approximately **₹196.41K**
* Hell's Kitchen sales: approximately **₹234.51K**
* AOV remained approximately **₹4.65–₹4.72**
* Transactions were concentrated between approximately **06:00–20:00**

### Business Investigation

The dashboard investigates:

```text
Sales
 ↓
Transactions
 ↓
AOV
 ↓
Store
 ↓
Product
 ↓
Hour
```

### Recommendations

* Optimize inventory around high-demand products.
* Investigate the drivers of March–June sales growth.
* Align staffing with peak transaction periods.
* Test product bundles to improve AOV.
* Develop store-specific strategies.
* Establish recurring KPI monitoring.

**Project:** [Coffee Shop Sales Analysis](./Coffee%20Shop%20Sales%20%20Analysis)

---

# 4.  Shopify Sales & Customer Retention Analysis

**Domain:** E-commerce / Customer Analytics

**Tools:** Power BI, DAX, Excel

### Business Problem

The business needs to understand sales performance, customer purchasing frequency, geographic customer value and opportunities for improving retention.

### Key KPIs

| KPI                |   Value |
| ------------------ | ------: |
| Revenue            | 132.30K |
| Customers          |     212 |
| Orders             |     217 |
| Purchase Frequency |    1.02 |
| Washington CLV     |  670.35 |
| Staten Island CLV  |  546.84 |

### Key Findings

* Revenue was **132.30K**.
* The dataset contained **212 customers** and **217 orders**.
* Purchase frequency was **1.02**.
* Customer value varied geographically.
* Washington recorded a CLV of **670.35**.
* Staten Island recorded a CLV of **546.84**.

### Business Investigation

* Why is repeat purchasing limited?
* Which customers purchase repeatedly?
* Which segments generate higher revenue?
* What drives higher CLV?
* Which locations generate higher customer value?
* Which customers may require re-engagement?

### Recommendations

* Develop second-purchase campaigns.
* Use RFM segmentation.
* Introduce personalized offers.
* Analyze high-CLV locations.
* Monitor repeat purchase rate, AOV, retention and CLV.

**Project:** [Shopify Customer Retention Analysis](./Shopify%20Sales%20and%20Customer%20Retention%20Analysis)

---

# 5.  Hotel Booking Analysis

**Domain:** Hospitality Analytics

**Tools:** Python, Pandas, NumPy, Matplotlib, Seaborn

### Dataset

* **119,390 booking records**
* **29 columns**
* Booking period: **2017–2019**
* City Hotel
* Resort Hotel

### Business Objective

Understand:

* Booking behavior
* Cancellation patterns
* Lead time
* Customer characteristics
* Seasonal demand
* Distribution channels
* Revenue patterns

### Key Findings

* City Hotel had the higher booking volume.
* City Hotel cancellation rate: **30.16%**
* Estimated City Hotel revenue: **18.57M**
* Estimated Resort Hotel revenue: **15.59M**
* Longer lead times were associated with higher cancellation behavior.
* Repeat guests showed lower cancellation tendencies.
* Booking demand varied by month.

### Business Insights

Cancellation risk can create a gap between booked rooms and realized occupancy.

Lead time can therefore be considered as one input into cancellation-risk monitoring.

### Recommendations

* Develop cancellation-risk monitoring.
* Evaluate lead time and reservation characteristics.
* Review cancellation policies by segment.
* Strengthen loyalty initiatives.
* Evaluate booking channels using volume, cancellation rate, ADR and realized revenue.
* Use seasonality for pricing and capacity planning.

**Project:** [Hotel Booking Analysis](./Hotel%20Booking%20Analysis)

---

# Common Analytics Framework

Across these projects, I follow a consistent business-analysis approach:

1. Understand the Business Problem
              ↓
2. Define Business Questions
              ↓
3. Inspect & Clean Data
              ↓
4. Validate Data Quality
              ↓
5. Explore Patterns
              ↓
6. Develop KPIs
              ↓
7. Investigate Business Drivers
              ↓
8. Generate Insights
              ↓
9. Recommend Actions
              ↓
10. Monitor KPIs

This approach helps ensure that the analysis is not limited to producing charts but instead connects the data to a practical business question.


#  Dashboard & Analytics Capabilities

Across the portfolio, I have worked with:

### Power BI

* KPI cards
* Interactive dashboards
* Drill-down analysis
* Filters and slicers
* Time intelligence
* Geographic analysis
* Product analysis
* Customer analysis
* Financial dashboards
* Operational dashboards
* DAX measures
* Data modeling

### SQL

* Relational database analysis
* Joins
* Aggregations
* CTEs
* Subqueries
* CASE statements
* Date analysis
* Customer analysis
* Revenue analysis
* Business-question-driven queries

### Python

* Pandas
* NumPy
* Data cleaning
* Exploratory Data Analysis
* Statistical analysis
* Correlation analysis
* Data visualization
* Machine learning
* Scikit-learn

### Tableau

* Customer satisfaction dashboards
* Segmentation
* Service-quality analysis
* Geographic analysis
* Interactive visualizations

### Streamlit & MySQL

* CRUD application development
* Database integration
* SQL business analysis
* Interactive filtering
* Operational dashboards

---

#  Key Business Analytics Themes

The portfolio covers multiple real-world business domains:

| Domain                  | Projects                                |
| ----------------------- | --------------------------------------- |
| Sales Analytics         | Coffee Shop, Shopify                    |
| Customer Analytics      | Shopify, British Airways, iTunes, Hotel |
| Financial Analytics     | Bloomberg, Mutual Funds                 |
| Operations Analytics    | Food Wastage, FedEx                     |
| Supply Chain            | FedEx                                   |
| Digital Payments        | PhonePe                                 |
| Real Estate             | Dubai Housing                           |
| Predictive Analytics    | MovieIQ                                 |
| Behavioral Analytics    | Strava / Bellabeat                      |
| Environmental Analytics | Bird Species                            |
| Hospitality             | Hotel Booking                           |
| SQL Analytics           | iTunes                                  |

---

#  Portfolio Highlights

### Power BI Projects

* Coffee Shop Sales Analysis
* Bloomberg Financial Performance
* Mutual Fund Analytics
* PhonePe Pulse Analysis
* Shopify Customer Analytics
* Dubai Housing Analysis
* Bird Species Analysis
* Strava / Bellabeat Analysis

### SQL Projects

* iTunes Music Store Analysis
* Food Wastage Management System
* Strava / Bellabeat Analysis

### Python Projects

* Hotel Booking Analysis
* FedEx Logistics Analysis
* MovieIQ Predictive Analytics
* Mutual Fund Analysis
* Strava / Bellabeat Analysis
* Bloomberg Financial Analysis

### Tableau Project

* British Airways Customer Satisfaction Analysis

### Application Development

* Local Food Wastage Management System using Streamlit + MySQL

---

#  Tools & Technologies

```text
BI & Visualization
├── Power BI
├── Tableau
└── Excel

Programming
├── Python
├── SQL
└── DAX

Python Libraries
├── Pandas
├── NumPy
├── Matplotlib
├── Seaborn
└── Scikit-learn

Databases
├── MySQL
└── SQLite

Application
└── Streamlit

Other
├── Power Query
├── Data Modeling
├── GeoJSON
├── Jupyter Notebook
└── GitHub
```

---

#  Repository Structure

```text
Innovexis-Internship-2026/
│
├── Bird_Species_Observation_Analysis/
│
├── Bloomberg-Style Financial Performance Analysis/
│
├── British Airways CSAT Analysis Project Details/
│
├── Coffee Shop Sales  Analysis/
│
├── Dubai Housing Marketing Analysis/
│
├── FedEx/
│
├── Food_Wastage_Management_System/
│
├── Hotel Booking Analysis/
│
├── Movie_IQ_Predictive_Analytics_Project/
│
├── Mutual Fund Analysis Project/
│
├── PhonePe Pulse Data Visualization and Exploration/
│
├── Shopify Sales and Customer Retention Analysis/
│
├── Strava Fitness Bellabeat Smart Device Analysis/
│
└── iTunes Music Store Analysis Project/
```

---

#  How These Projects Demonstrate My Analytics Approach

The projects demonstrate progression across the complete analytics lifecycle:

### Data Collection & Understanding

Understanding source data, schema, business context and analytical requirements.

### Data Cleaning

Handling:

* Missing values
* Duplicates
* Data types
* Inconsistent labels
* Outliers
* Data-quality issues

### Data Modeling

Building relationships and analytical structures required for reporting.

### Exploratory Analysis

Identifying:

* Trends
* Distributions
* Correlations
* Segments
* Outliers
* Concentrations
* Performance differences

### Business Investigation

Moving from:

> **"What happened?"**

to:

> **"Where did it happen?"**

and then:

> **"What should we investigate next?"**

### Business Recommendations

Translating analytical findings into possible actions related to:

* Operations
* Revenue
* Customer retention
* Cost management
* Risk monitoring
* Resource planning
* Product strategy

---

#  Key Learning Outcomes

Through these projects, I developed practical experience in:

* Translating business problems into analytical questions.
* Cleaning and validating real-world datasets.
* Building interactive Power BI dashboards.
* Writing SQL queries for business questions.
* Performing exploratory data analysis with Python.
* Developing KPIs and analytical measures.
* Investigating drivers behind business performance.
* Communicating insights through visual storytelling.
* Converting findings into business recommendations.
* Understanding the limitations of analytical results.

---

#  Data & Analysis Disclaimer

Some projects use public, synthetic, educational, or sample datasets.

Therefore:

* Results are specific to the analyzed datasets.
* Findings should not automatically be generalized to an entire industry or population.
* Correlation should not be interpreted as causation.
* Predictive models should not be treated as guarantees.
* Financial projects are analytical demonstrations and not investment advice.
* Business recommendations represent areas for investigation rather than guaranteed outcomes.

---

#  Future Improvements

Potential improvements across the portfolio include:

* Automated data refresh pipelines
* More advanced DAX measures
* Advanced SQL analytics
* Statistical hypothesis testing
* Predictive modeling
* Customer segmentation
* RFM analysis
* Forecasting
* Automated dashboard refresh
* Streamlit deployment
* Model explainability
* Data-quality monitoring
* Automated KPI alerts

---

#  About Me

**Harika Challa**

**Data Analyst | Power BI | SQL | Python | Excel**

I bring an IT operations background combined with hands-on data analytics experience.

My focus is on using data to:

* Understand business problems
* Identify performance drivers
* Build decision-support dashboards
* Improve business processes
* Generate actionable insights
* Support data-driven decision-making

---

#  Connect With Me

* **GitHub:** [HarikaChalla03](https://github.com/HarikaChalla03)
* **LinkedIn:** [Challa Harika](https://www.linkedin.com/in/challa-harika/)

---

#  Thank You for Visiting

If you are reviewing this repository as a recruiter, hiring manager, analyst, or fellow learner, I hope these projects demonstrate not only my technical skills but also my ability to connect **data → business questions → analysis → insights → decisions**.

**Thank you for exploring my analytics portfolio!**
