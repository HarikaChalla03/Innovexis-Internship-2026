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

# 4.  Mutual Fund Performance & Risk Analytics

**Domain:** Financial Analytics

**Tools:** Python, Power BI, DAX, Excel

### Business Problem

Historical return alone does not provide a complete view of mutual fund performance.

The project evaluates schemes using:

* Return
* Risk
* Sharpe Ratio
* Sortino Ratio
* Expense Ratio
* AUM

### Dataset

**814 mutual fund schemes**

### Key Metrics

| Metric                | Result |
| --------------------- | -----: |
| Schemes               |    814 |
| Average 3-Year Return | 18.72% |
| Average Expense Ratio |  0.75% |
| Average Sharpe Ratio  |   1.25 |
| Average Sortino Ratio |   2.77 |
| Average Risk          |   4.50 |

### Business Insights

* Mutual fund performance varies considerably across schemes.
* Historical return alone is insufficient for comparison.
* Risk-adjusted metrics provide additional analytical context.
* Expense ratio provides information about fund cost.
* AUM is useful as a scale indicator but is not itself a performance measure.

### Recommendations

* Evaluate multiple performance and risk metrics together.
* Monitor Sharpe and Sortino ratios.
* Analyze cost versus historical performance.
* Track AUM separately.
* Refresh performance metrics periodically.

> This project is intended for historical analysis and analytical demonstration, not personalized investment advice or future-return prediction.

**Project:** [Mutual Fund Analysis](./Mutual%20Fund%20Analysis%20Project)

---

# 5. 📱 PhonePe Pulse Data Visualization & Exploration

**Domain:** Digital Payments Analytics

**Tools:** Power BI, DAX, Power Query, GeoJSON

### Objective

Analyze digital payment activity across India through:

* Transaction volume
* Transaction value
* User adoption
* Payment categories
* State-level performance
* District-level performance
* Growth trends

### Key KPIs

| KPI                       |   Value |
| ------------------------- | ------: |
| Total Transactions        |     72B |
| Total Transaction Value   | ₹1,214T |
| Average Transaction Value |  ₹16.9K |
| Registered Users          |    373M |
| CAGR                      | 145.60% |
| YoY Growth                | 271.85% |

### Key Findings

* Maharashtra recorded approximately **10.39B transactions**.
* Telangana recorded approximately **₹165.2T** in transaction value.
* The highest transaction-volume state and highest transaction-value state were different.
* The analysis covers P2P, merchant, recharge/bill-payment and financial-service categories.
* District-level analysis identifies areas requiring further investigation.

### Business Insights

Transaction count and transaction value provide different views of market performance.

Therefore:

```text
Transaction Volume
        +
Transaction Value
        +
Average Transaction Value
```

should be monitored together.

### Recommendations

* Monitor transaction volume and value separately.
* Develop regional strategies.
* Investigate high-growth markets.
* Analyze underperforming districts.
* Monitor payment-category mix.
* Build recurring regional performance monitoring.

**Project:** [PhonePe Pulse Analysis](./PhonePe%20Pulse%20Data%20Visualization%20and%20Exploration)

---

# 6. 🛒 Shopify Sales & Customer Retention Analysis

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

# 7.  Hotel Booking Analysis

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

# 8.  British Airways Customer Satisfaction Analysis

**Domain:** Customer Experience Analytics

**Tools:** Tableau, Excel, CSV

### Objective

Analyze British Airways customer reviews to understand satisfaction across:

* Traveler type
* Cabin class
* Aircraft
* Geography
* Service-quality dimensions

### Key Findings

| Traveler Type | Satisfaction |
| ------------- | -----------: |
| Solo          |       54.47% |
| Family        |       51.50% |
| Couple        |       43.25% |
| Business      |       25.40% |

Economy passengers had an average overall rating of approximately **4.38** in the analyzed dataset.

### Business Investigation

The analysis investigates:

* Traveler segment differences
* Aircraft-level satisfaction
* Cabin-class differences
* Country-level differences
* Staff service
* Seat comfort
* Food and beverages
* Entertainment
* Ground service
* Value for money

### Recommendations

* Monitor satisfaction by traveler type, aircraft, cabin and country.
* Investigate lower-rated service dimensions.
* Analyze aircraft-level differences.
* Develop segment-specific CX initiatives.
* Track CSAT regularly.

**Project:** [British Airways CSAT Analysis](./British%20Airways%20CSAT%20Analysis%20Project%20Details)

---

# 9.  FedEx Logistics & Delivery Performance Analysis

**Domain:** Supply Chain / Logistics Analytics

**Tools:** Python, Pandas, NumPy, Matplotlib, Seaborn

### Dataset

* **10,324 shipment records**
* **33 features**
* Air
* Ocean
* Truck
* Air Charter

### Key Findings

* **61.25%** shipments were delivered On Time.
* **27.26%** were delivered Early.
* **11.49%** were Delayed.
* Ocean shipments showed approximately 3 days average delay.
* Most order cycles were concentrated around 50–250 days.
* Some orders exceeded 700 days.
* Approximately 388 freight-cost outliers were identified.
* ARV contributed more than 80% of revenue in the analysis.
* Quantity and line-item value showed a strong **0.81 correlation**.

### Business Insights

* Shipment mode is associated with delivery performance.
* Geographic delivery performance varies.
* Freight-cost outliers require investigation.
* Long delivery cycles create opportunities for proactive monitoring.
* Product concentration can represent an operational/business risk.

### Recommendations

* Optimize shipment mode according to urgency and cost.
* Develop vendor and country scorecards.
* Investigate freight-cost anomalies.
* Monitor high-risk shipments.
* Introduce automated data-quality checks.
* Monitor product-group concentration.

**Project:** [FedEx Logistics Analysis](./FedEx)

---

# 10.  Bird Species Observation & Conservation Analysis

**Domain:** Environmental Analytics

**Tools:** Power BI, DAX, Power Query, Excel

### Dataset

* **21,803 observations**
* **127 species**
* **8 at-risk species**

### Key KPIs

| KPI             | Value |
| --------------- | ----: |
| Species         |   127 |
| Observations    | 21.8K |
| At-Risk Species |     8 |
| Detection Rate  | 0.53% |
| Flyover Rate    | 0.08% |

### Key Findings

* Grassland recorded approximately **12.1K observations**.
* Forest recorded approximately **9.7K observations**.
* *Vireo olivaceus* recorded **849 observations**.
* *Zenaida macroura* recorded **606 observations**.
* *Turdus migratorius* recorded **573 observations**.
* Singing represented **69.54%** of recorded activity.
* Eight at-risk species were identified.
* Disturbance was categorized into no, slight, moderate and serious effects.

### Business Investigation

* Which habitats have the highest observation volumes?
* Which species are observed most frequently?
* How do observations change by season?
* How does observation distance affect detection?
* Which species require closer monitoring?
* How do disturbance patterns vary?

### Recommendations

* Prioritize habitat monitoring.
* Create a focused monitoring list for at-risk species.
* Investigate disturbance hotspots.
* Standardize observation methodology.
* Track seasonal changes.

**Project:** [Bird Species Observation Analysis](./Bird_Species_Observation_Analysis)

---

# 11.  Dubai Housing Market & Investment Analysis

**Domain:** Real Estate Analytics

**Tools:** Power BI, DAX, Power Query, Excel/CSV

### Dataset

Approximately **50K property listings**

### Key Metrics

| Metric                 |   Value |
| ---------------------- | ------: |
| Property Listings      |     50K |
| Average Property Value | 224.83K |
| Average Price/Sq.Ft.   |  113.31 |
| Average Bedrooms       |     3.5 |

### Key Findings

* Urban properties showed higher price per square foot.
* Suburban properties were more affordable in the analyzed data.
* Rural properties showed relatively lower pricing with larger space.
* Three-bedroom and five-bedroom properties were prominent demand categories.
* Property prices generally increased with bedroom count.
* Older properties appeared more expensive in this dataset.

### Business Investigation

The project investigates:

```text
Location
   ↓
Property Size
   ↓
Bedrooms
   ↓
Property Age
   ↓
Price
   ↓
Price/Sq.Ft.
```

### Recommendations

* Segment marketing by location.
* Closely monitor mid-sized property demand.
* Avoid using property age alone for pricing decisions.
* Use price per square foot as a comparison KPI.
* Investigate potential value opportunities further.

**Project:** [Dubai Housing Analysis](./Dubai%20Housing%20Marketing%20Analysis)

---

# 12.  MovieIQ — Predictive Analytics on Film Success

**Domain:** Predictive Analytics

**Tools:** Python, Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn

### Business Problem

Film production involves significant financial risk. Movie success may depend on factors such as:

* Budget
* Genre
* Ratings
* Popularity
* Other movie characteristics

### Objective

Identify historical patterns associated with movie success and evaluate whether available features can provide useful predictive signals.

### Workflow

```text
Raw Movie Data
      ↓
Data Cleaning
      ↓
Data Validation
      ↓
EDA
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
```

### Models Evaluated

| Model                    |    R² |
| ------------------------ | ----: |
| Linear Regression        | 0.589 |
| Random Forest Regression | 0.544 |

Approximately **80.7%** of movies in the analyzed dataset were classified as successful using the project's defined framework.

A **0.60 success threshold** was used as a project-specific analytical assumption.

### Key Insights

* Movie success is influenced by multiple factors.
* Budget alone does not guarantee success.
* Historical data can provide predictive signals.
* The available features do not explain all variation in movie performance.

### Future Improvements

* Add marketing spend.
* Add release date and seasonality.
* Add market-level variables.
* Test additional models.
* Perform hyperparameter tuning.
* Improve feature engineering.
* Add model explainability.
* Deploy an interactive prediction application.

> The prediction framework is a decision-support demonstration and should not be interpreted as a guarantee of future movie performance.

**Project:** [MovieIQ Predictive Analytics](./Movie_IQ_Predictive_Analytics_Project)

---

# 13.  Strava / Bellabeat Smart Device Fitness Analysis

**Domain:** Fitness / Behavioral Analytics

**Tools:** Python, SQL, SQLite, Power BI

### Objective

Analyze smart-device data to understand:

* Physical activity
* Sleep behavior
* Sedentary behavior
* Heart rate
* Device engagement

### Key Findings

* **58.3%** of recorded days were Lightly Active.
* Steps and calories showed a **0.56 correlation**.
* Average logged sleep was **7.0 hours**.
* **44.1%** of recorded sleep days were below 7 hours.
* Average device tracking was **26.2 days out of 31**.
* Steps and sleep showed a weak **-0.19 correlation**.
* Average recorded sedentary time was **15.9 hours/day**.
* Weight data was available for only **8 users**.

### Business Insights

* Device engagement was relatively consistent.
* Activity behavior creates opportunities for personalized engagement.
* Sleep data can support wellness-focused features.
* Sedentary behavior can be addressed through movement reminders.
* Multiple health signals can be combined for personalized insights.

### Recommendations

* Introduce personalized activity nudges.
* Provide sleep goals and progress tracking.
* Use prolonged inactivity alerts.
* Combine activity, sleep and heart-rate data.
* Improve automatic health-data integration.
* Monitor engagement and retention KPIs.

### Limitation

The dataset represents a limited sample of wearable-device users. Weight/BMI data is particularly limited, and correlations should not be interpreted as causal relationships.

**Project:** [Strava / Bellabeat Analysis](./Strava%20Fitness%20Bellabeat%20Smart%20Device%20Analysis)

---

# 14.  iTunes Music Store SQL Analysis

**Domain:** SQL / Customer / Sales Analytics

**Tools:** MySQL, SQL

### Dataset

* **59 customers**
* **614 invoices/orders**
* **4,709.43 total revenue**

### Database

The project uses relational tables including:

* Album
* Artist
* Customer
* Employee
* Genre
* Invoice
* Invoice Line
* Media Type
* Playlist
* Playlist Track
* Track

### Business Questions

* Which countries generate the most revenue?
* Which customers generate the highest historical revenue?
* What is the average order value?
* Which artists and tracks perform best?
* Which genres generate the most revenue?
* How does genre performance vary by country?
* Which media types are most common?
* How are high-value customers distributed?

### Key Findings

* USA generated the highest revenue: **1,040.49**
* Top five countries contributed approximately **57.9%** of total revenue.
* Customers averaged approximately **10.4 purchases** in the observed history.
* Average time between purchases: **132.28 days**
* Rock generated **2,608.65 revenue**
* Rock represented approximately **55.4%** of total revenue.
* Queen generated the highest artist revenue: **190.08**
* *Are You Experienced?* was the highest-selling album with **187 units**.
* MPEG audio files were the dominant media type.
* Purchased AAC usage declined from 12 units in 2017 to 3 units in 2020.

### SQL Skills Demonstrated

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* JOINs
* Aggregations
* CASE
* Subqueries
* CTEs
* Date analysis
* Customer segmentation
* KPI analysis
* Revenue analysis

### Limitations

* Purchased tracks had a single observed unit price of 0.99, limiting price-elasticity analysis.
* Customer value represents historical revenue rather than predictive CLV.
* Small customer counts in some countries make revenue-per-customer comparisons less reliable.

**Project:** [iTunes SQL Analysis](./iTunes%20Music%20Store%20Analysis%20Project)

---

#  Common Analytics Framework

Across these projects, I follow a consistent business-analysis approach:

```text
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
```

This approach helps ensure that the analysis is not limited to producing charts but instead connects the data to a practical business question.

---

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

# 📫 Connect With Me

* **GitHub:** [HarikaChalla03](https://github.com/HarikaChalla03)
* **LinkedIn:** [Challa Harika](https://www.linkedin.com/in/challa-harika/)

---

#  Thank You for Visiting

If you are reviewing this repository as a recruiter, hiring manager, analyst, or fellow learner, I hope these projects demonstrate not only my technical skills but also my ability to connect **data → business questions → analysis → insights → decisions**.

**Thank you for exploring my analytics portfolio!**
