# 🏨 Hotel Booking Analysis: Customer Behavior & Cancellation Insights

##  Project Overview

An exploratory data analysis project focused on understanding **hotel booking behavior, cancellation patterns, customer characteristics, and seasonal demand**.

The objective was to identify business patterns that can support **revenue management, cancellation-risk monitoring, customer retention, and demand planning**.

---

##  Business Questions

* Which hotel type receives more bookings?
* What is the cancellation rate?
* Does booking lead time affect cancellation behavior?
* How do City and Resort Hotels compare?
* Do repeat customers have different cancellation behavior?
* How does booking demand change by month?
* Which booking channels and customer segments require attention?

---

##  Tools & Technologies

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Jupyter Notebook

---

## Dataset

* **119,390 booking records**
* **29 columns**
* Booking period: **2017–2019**
* Hotel types:

  * City Hotel
  * Resort Hotel

The dataset contains information related to bookings, customers, stay duration, lead time, distribution channels, deposits, and cancellations.

---

##  Key Findings

| Area              | Finding                                                             |
| ----------------- | ------------------------------------------------------------------- |
| Hotel Type        | City Hotel had higher booking volume                                |
| Cancellation      | City Hotel cancellation rate was **30.16%**                         |
| Estimated Revenue | City Hotel: **18.57M**                                              |
| Estimated Revenue | Resort Hotel: **15.59M**                                            |
| Lead Time         | Longer lead times were associated with higher cancellation behavior |
| Customer Behavior | Repeat guests showed lower cancellation tendencies                  |
| Demand            | Booking demand varied across months                                 |
| Channels          | Distribution channels were important contributors to booking volume |

---

##  Business Insights

### 1. Cancellation Risk

A high cancellation rate can create a gap between **booked rooms and realized occupancy**, making capacity and revenue planning more difficult.

### 2. Lead-Time Behavior

Bookings made further in advance showed greater cancellation tendency, making lead time a useful variable for cancellation-risk monitoring.

### 3. Customer Retention

Repeat guests demonstrated lower cancellation tendencies, suggesting that customer retention and loyalty strategies can be investigated further.

### 4. Revenue & Hotel Type

City Hotel generated higher estimated room revenue but also showed considerable cancellation exposure.

### 5. Seasonality

Monthly booking variations indicate opportunities for **seasonal pricing, staffing, and inventory planning**.

---

##  Business Investigation

The analysis investigated relationships between:

* Lead time → Cancellation
* Hotel type → Bookings & Revenue
* Customer type → Cancellation
* Repeat guests → Cancellation
* Distribution channel → Booking behavior
* Monthly trends → Demand patterns
* Stay duration → Booking behavior

---

##  Business Recommendations

* Create a **cancellation-risk monitoring framework**.
* Use lead time and booking characteristics to identify high-risk reservations.
* Review cancellation policies for different customer segments.
* Strengthen repeat-customer and loyalty initiatives.
* Evaluate booking channels using **volume + cancellation rate + ADR + realized revenue**.
* Use seasonal booking trends for pricing and capacity planning.
* Build a KPI dashboard for continuous monitoring.

---

##  Project Structure

```text
Hotel Booking Analysis/
│
├── Hotel_Booking_Customer_Behavior_And_Cancellation_Insights.ipynb
├── README.md
└── dataset/
```

---

##  Skills Demonstrated

**Data Cleaning | Exploratory Data Analysis | Data Visualization | Business Analysis | Customer Behavior Analysis | Cancellation Analysis | Revenue Analysis | Python | Pandas | NumPy | Matplotlib | Seaborn**

---

##  Project

GitHub: https://github.com/HarikaChalla03/Innovexis-Internship-2026/tree/main/Hotel%20Booking%20Analysis
