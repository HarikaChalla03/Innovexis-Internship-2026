# Bloomberg-Style Financial Performance & CFO Analytics

##  Project Overview

This project is an end-to-end **financial data analytics and CFO decision-support project** using a Bloomberg-style synthetic financial dataset covering **FY2016–FY2023**.

The project transforms raw financial extracts into clean, validated and analysis-ready datasets and investigates **revenue performance, profitability, product mix, geographic performance, distribution channels and operating expenses**.

The analysis workflow combines **Python/Pandas, Excel, Power BI and DAX** to move from raw financial data to business insights and management-oriented recommendations.

---

##  Business Problem

Management needs a reliable way to understand:

* How revenue and profitability changed over time
* Which products contribute most to revenue
* Which geographic markets are important
* How operating expenses affect profitability
* Where financial performance requires further investigation
* Whether the underlying financial data is reliable enough for decision-making

### Key Business Question

> **What are the major drivers of revenue and profitability, and where should management focus further investigation?**

---

##  Project Objectives

* Clean and structure raw Bloomberg-style financial extracts
* Identify and correct verified data-quality issues
* Validate financial calculations and reconciliations
* Analyze revenue and profitability trends
* Investigate product, brand and channel performance
* Analyze geographic revenue
* Evaluate operating expense intensity
* Build management-ready Power BI dashboards
* Translate analytical findings into business recommendations

---

##  Tools & Technologies

| Tool                | Purpose                                      |
| ------------------- | -------------------------------------------- |
| **Python / Pandas** | Data cleaning, transformation and validation |
| **Excel**           | Financial modeling and reconciliation        |
| **Power BI**        | Interactive financial dashboards             |
| **DAX**             | Financial KPIs and analytical measures       |
| **GitHub**          | Project documentation and version control    |

---

##  Project Workflow

```text
Raw Bloomberg-Style Data
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
KPI & Driver Analysis
          ↓
Business Investigation
          ↓
CFO-Oriented Recommendations
```

---

##  Dataset

The project contains four major financial datasets:

### 1. P&L

Includes financial measures such as:

* Revenue
* COGS
* Gross Profit
* Gross Margin
* Operating Expenses
* EBIT
* Net Income
* EPS

### 2. Revenue by Segment

Used to analyze:

* Product category
* Brand
* Revenue trends
* Product contribution
* Revenue mix

### 3. Revenue by Geography

Used to analyze:

* Regional revenue
* Geographic contribution
* Revenue mix
* Historical regional trends

### 4. OPEX Detail

Used to analyze:

* Operating expenses
* Expense categories
* OPEX intensity
* OPEX relative to revenue

---

##  Data Cleaning & Validation

Python/Pandas was used to transform the raw financial extracts into structured analytical datasets.

The process included:

* Data type standardization
* Label normalization
* Reshaping financial data
* Handling verified anomalies
* Removing verified duplicates
* Creating analysis-ready tables
* Financial reconciliation
* Cross-checking calculated metrics

### Data Quality Example

A material FY2018 data-quality anomaly was identified and corrected:

```text
986000 → 986
```

This validation step was performed before using the data for financial analysis.

---

##  Validation Results

The final datasets were validated using reconciliation checks.

```text
Revenue Reconciliation        PASS
Gross Profit Reconciliation   PASS
Gross Margin Validation       PASS
EBIT Validation               PASS
EPS Validation                PASS
Product Reconciliation        PASS
Brand Reconciliation          PASS
Channel Reconciliation        PASS
OPEX Reconciliation           PASS
```

These checks helped ensure that the cleaned datasets were internally consistent before dashboard development.

---

#  Financial Analysis

The project analyzes financial performance through several perspectives.

## P&L Analysis

Key metrics include:

* Revenue
* Gross Profit
* Gross Margin
* EBIT
* Net Income
* EPS
* YoY Growth

The objective is to understand not only revenue movement but also how revenue changes translate into profitability.

---

##  Product Performance

Product categories were analyzed to understand revenue contribution and changes over time.

### Key Finding

**Footwear was the largest product revenue contributor in the analyzed dataset.**

Selected values:

| Year   | Footwear Revenue |
| ------ | ---------------: |
| FY2016 |         €10,073m |
| FY2019 |         €13,380m |
| FY2020 |         €11,629m |
| FY2022 |         €12,831m |
| FY2023 |         €12,470m |

The trend indicates periods of growth, decline and recovery rather than a consistently increasing trajectory.

### Business Interpretation

Because footwear represents a large share of revenue, changes in footwear performance can have a significant effect on overall revenue.

Further investigation should therefore examine:

* Geography
* Brand
* Distribution channel
* Product-market combinations

---

##  Apparel Performance

Apparel represents another significant revenue contributor.

Selected values:

| Year   | Apparel Revenue |
| ------ | --------------: |
| FY2016 |         €7,264m |
| FY2019 |         €8,865m |
| FY2020 |         €7,104m |
| FY2023 |         €7,757m |

The analysis shows that apparel also experienced periods of contraction and recovery.

---

##  Geographic Analysis

Geographic revenue was analyzed to identify major markets and understand regional contribution.

Selected FY2019 values:

| Region         | Revenue |
| -------------- | ------: |
| Western Europe | €5,957m |
| North America  | €4,917m |
| Greater China  | €4,728m |
| Russia/CIS     |   €686m |

### Important Data Consideration

Historical geographic reporting structures changed during the period.

Therefore, long-term regional comparisons should not blindly compare historical labels without first establishing a consistent geographic mapping.

---

#  Operating Expense Analysis

Operating expenses were analyzed alongside revenue and profitability.

A key analytical measure is:

```text
OPEX / Revenue
```

This provides better context than looking at absolute operating expenses alone.

### Business Question

> Are operating expenses increasing faster or slower than revenue?

This helps investigate potential operating leverage and cost pressure.

---

#  Business Findings

1. **Footwear was the largest product revenue contributor.**
2. Footwear performance was not consistently upward across the full period.
3. Apparel remained an important secondary contributor but also experienced periods of decline and recovery.
4. Major geographic markets contributed materially to overall revenue.
5. Geographic reporting changes create challenges for direct long-term regional comparisons.
6. Revenue growth alone does not provide a complete view of financial performance.
7. Gross Margin, EBIT and OPEX/Revenue should be analyzed together to understand profitability.
8. Data-quality validation is critical before using financial data for management reporting.

---

#  Business Insights

### 1. Product Concentration

Dependence on a major product category means changes in that category can materially affect total revenue.

### 2. Uneven Revenue Recovery

Product-level performance does not always recover at the same pace, making product-level analysis more useful than looking only at total revenue.

### 3. Revenue ≠ Profitability

Higher revenue does not automatically mean stronger operating profitability.

Management should evaluate:

```text
Revenue
   ↓
Gross Margin
   ↓
OPEX
   ↓
EBIT
```

### 4. Geographic Analysis Requires Normalization

Changes in historical reporting structures can distort long-term regional comparisons if the underlying geography is not standardized.

### 5. Cost Intensity Matters

OPEX should be considered relative to revenue to understand whether the cost structure is becoming more or less efficient.

---

#  Business Investigation

The analysis follows a driver-based investigation approach.

## Revenue Investigation

```text
Revenue
   ↓
Product
   ↓
Brand
   ↓
Channel
   ↓
Geography
```

The objective is to identify where revenue growth or decline originates.

---

## Profitability Investigation

```text
Revenue
   ↓
COGS
   ↓
Gross Profit
   ↓
Operating Expenses
   ↓
EBIT
```

This helps distinguish revenue-driven changes from margin and cost-driven changes.

---

## Operating Leverage Investigation

```text
Revenue Growth
       vs
OPEX Growth
       ↓
Operating Leverage
       ↓
EBIT Impact
```

This provides additional context around changes in operating profitability.

---

#  Business Recommendations

### 1. Monitor Core Product Performance

Continuously monitor major product categories and investigate deviations from historical performance.

### 2. Investigate Product-Market Combinations

Analyze product performance by:

* Geography
* Brand
* Distribution channel

to identify specific areas contributing to growth or decline.

### 3. Monitor OPEX / Revenue

Track operating expenses relative to revenue to identify increasing cost pressure.

### 4. Connect Revenue to Profitability

Evaluate revenue changes alongside Gross Margin and EBIT rather than using revenue growth as the only performance indicator.

### 5. Standardize Geographic Mapping

Create consistent geographic mappings before performing long-term regional trend analysis.

### 6. Maintain Automated Validation

Financial reconciliation checks should remain part of the reporting pipeline to reduce the risk of incorrect management reporting.

---

#  Dashboard

The Power BI dashboard provides an interactive view of:

* Revenue trends
* Profitability KPIs
* Product performance
* Geographic performance
* Revenue mix
* Operating expenses
* Financial trends

**Power BI File:** `Bloomberg_Equity_Analysis.pbix`

---

#  Project Files

```text
Bloomberg-Style Financial Performance Analysis/
│
├── Bloomberg Style Financial Performance Analysis.pptx
│
├── Bloomberg_Equity_Analysis.pbix
│
└── Bloomberg_Equity_Extraction_Analysis.ipynb
```

### File Description

**`.pptx`**
Project presentation and financial analysis summary.

**`.pbix`**
Interactive Power BI dashboard and financial analysis.

**`.ipynb`**
Python/Pandas data extraction, cleaning and validation workflow.

---

#  Key Learning

This project helped me understand how to move beyond dashboard creation and follow a complete analytics workflow:

```text
Raw Data
   ↓
Data Quality
   ↓
Cleaning
   ↓
Validation
   ↓
Financial Analysis
   ↓
Business Investigation
   ↓
Insights
   ↓
Recommendations
```

The key learning was that **a financial dashboard is only useful when the underlying data is validated and the analysis can explain the business drivers behind the numbers.**

---

#  Data Disclaimer

This project uses a **Bloomberg-style synthetic financial dataset** created for analytical and educational purposes.

The financial figures presented in this project should **not be interpreted as actual current or historical Adidas AG financial statements or Bloomberg proprietary data**.

The project demonstrates financial data cleaning, validation, modeling, visualization and business analysis techniques.

---

#  Author

**Harika Challa**

Data Analyst | Power BI | SQL | Python | Excel

Interested in **Data Analytics, Business Intelligence, Financial Analytics and Operations Analytics**.
