# Local Food Wastage Management System

## Project Overview

The **Local Food Wastage Management System** is an end-to-end data analytics and management application designed to improve visibility into surplus food availability, food claims, and distribution status.

The project uses **MySQL, SQL, Python, Pandas, and Streamlit** to manage food listings and analyze provider, receiver, food, location, and claim data.

The primary analytical focus is understanding how food moves through the process:

**Provider → Food Listing → Claim → Claim Status → Distribution**

---

## Business Problem

Food providers may have surplus food while receivers have varying levels of demand. Without a centralized system, it can be difficult to track:

* Available food
* Food providers and receivers
* Food claims
* Claim status
* Food availability by location
* Provider contribution
* Distribution patterns

This project provides a centralized system for managing and analyzing these activities.

---

##  Project Objectives

* Manage food provider and receiver information.
* Track available food listings.
* Analyze food availability by location and category.
* Identify high-contributing provider types.
* Analyze receiver claim activity.
* Identify the most frequently claimed meal types.
* Monitor Completed, Cancelled, and Pending claims.
* Analyze city-level claim outcomes.
* Generate business insights and recommendations using SQL analysis.

---

##  Tech Stack

* **Python**
* **Pandas**
* **MySQL**
* **SQL**
* **Streamlit**
* **MySQL Connector**

---

##  System Architecture

```text
Food Providers
      ↓
Food Listings
      ↓
     Claims
      ↓
Claim Status
      ↓
Completed / Cancelled / Pending
      ↓
Business Analysis & Insights
```

---

##  Database Structure

The project uses four major entities:

### Providers

Stores food provider information.

### Receivers

Stores receiver information.

### Food Listings

Stores information about available food, including:

* Food ID
* Food Name
* Quantity
* Expiry Date
* Provider ID
* Provider Type
* Location
* Food Type
* Meal Type

### Claims

Stores food claim information and claim status.

---

##  Application Features

### Dashboard

Provides an overview of:

* Providers
* Receivers
* Food Listings
* Claims
* Total Quantity
* Food listings by location
* Claim status distribution

### Food Listing Filters

Users can filter food listings by:

* Location
* Food Type
* Meal Type
* Provider Type

### SQL Business Analysis

The project contains SQL queries to answer business questions related to:

* Provider contribution
* Receiver activity
* Food availability
* Food types
* Meal types
* Claim activity
* Claim status
* City-level claim outcomes

### CRUD Operations

The application supports:

* Add food listing
* Update food listing
* Delete food listing

---

#  Key Business Findings

### Food Availability

* The system recorded **25,894 units** of food across food listings.
* **Restaurants** contributed the highest listed quantity among provider types with **6,923 units**.

### Food Type

* **Vegetarian** was the most common food type with **337 listings**.
* Vegan had **334 listings**.
* Non-Vegetarian had **330 listings**.

### Meal Type Demand

* **Breakfast** had the highest claim activity with **278 claims**.
* Lunch recorded 250 claims.
* Snacks recorded 240 claims.
* Dinner recorded 232 claims.

### Claim Status

Out of 1,000 claim records:

| Status    | Claims | Percentage |
| --------- | -----: | ---------: |
| Completed |    339 |      33.9% |
| Cancelled |    336 |      33.6% |
| Pending   |    325 |      32.5% |

The claim-status distribution was relatively balanced across the three statuses.

### Provider Contribution

Among the providers analyzed:

* **Barry Group** recorded the highest listed quantity with **179 units**.
* Evans, Wright and Mitchell recorded 158 units.
* Smith Group recorded 150 units.

### City-Level Claim Activity

* **East Heatherport** recorded the highest city-status count in the provided results with **7 cancelled claims**.
* **South Kathryn** recorded the highest completed-claim count with **5 completed claims**.
* Several cities showed a mixture of Completed, Cancelled, and Pending claims.

---

#  Business Insights

### 1. Supply is distributed across multiple provider types

Restaurants, supermarkets, grocery stores, and catering services all contribute substantial quantities of food.

### 2. Breakfast has the highest claim activity

Breakfast recorded the highest number of claims, indicating relatively stronger claim activity for breakfast-related listings.

### 3. Claim outcomes require monitoring

Completed, Cancelled, and Pending claims are all substantial portions of total claim activity. Therefore, monitoring only food availability is not sufficient.

### 4. Location matters

Different cities show different claim-status patterns. City-level analysis can help identify locations with higher cancellation or pending activity.

### 5. Provider contribution varies

Some providers contribute considerably more listed food than others. Provider-level analysis can help identify high-contributing providers for operational monitoring.

---

#  Business Investigation

The following areas can be investigated further:

* Why are some claims cancelled?
* Why do some claims remain pending?
* Which cities have high food availability but relatively lower claim activity?
* Which food and meal types have the highest claim activity?
* Which providers contribute the most food and also have successful claims?
* Are near-expiry food listings being claimed quickly enough?

---

#  Business Recommendations

* Improve **provider-receiver matching** at the city level.
* Monitor **Completed, Cancelled, and Pending claims** by location.
* Investigate locations with high cancellation or pending activity.
* Prioritize **near-expiry food listings**.
* Monitor frequently claimed food and meal categories.
* Track the process from **listing → claim → completed claim**.
* Build a city-level supply-demand monitoring mechanism.

---

#  Key SQL Analysis

The project uses SQL to answer business questions such as:

```text
1. How many food providers and receivers are there in each city?
2. Which provider type contributes the most food?
3. Which receivers have the highest claim activity?
4. What is the total quantity of food available?
5. Which city has the highest number of food listings?
6. What are the most common food types?
7. How many claims are made for each food item?
8. Which providers have the highest completed claims?
9. What is the claim-status distribution?
10. Which meal type has the highest claim activity?
11. What is the total listed quantity associated with each provider?
12. How do claim statuses vary across cities?
```

---

#  Application Screenshots

### Dashboard

*Add dashboard screenshot here.*

### Food Listing Analysis

*Add food listing/filter screenshot here.*

### SQL Business Analysis

*Add SQL analysis screenshot here.*

### CRUD Operations

*Add CRUD screenshot here.*

---

#  Project Structure

```text
Local-Food-Wastage-Management/
│
├── app.py
├── requirements.txt
├── README.md
│
├── sql/
│   └── business_queries.sql
│
├── data/
│   └── sample_data/
│
├── screenshots/
│   ├── dashboard.png
│   ├── food_listings.png
│   ├── sql_analysis.png
│   └── crud_operations.png
│
└── documentation/
```

---

#  How to Run

### 1. Clone the repository

```bash
git clone <your-github-repository-url>
```

### 2. Navigate to the project directory

```bash
cd Local-Food-Wastage-Management
```

### 3. Install required packages

```bash
pip install -r requirements.txt
```

### 4. Configure MySQL

Create the required database and tables in MySQL and load the project data.

Update the database connection details in the application configuration.

### 5. Run the Streamlit application

```bash
streamlit run app.py
```

---

#  Future Improvements

* Add an **expiry-based food prioritization system**.
* Add **listing-to-claim conversion rate**.
* Add **claim-completion rate**.
* Add city-level **supply-demand mismatch analysis**.
* Add automated alerts for near-expiry food.
* Add trend analysis for claim activity.
* Add role-based access for providers and receivers.

---

#  Skills Demonstrated

**Data Analysis:**
SQL, exploratory analysis, KPI analysis, business investigation

**Database:**
MySQL, relational data, joins, aggregations, CRUD

**Python:**
Pandas, data handling, Streamlit

**Business Analytics:**
Supply analysis, demand analysis, claim analysis, geographic analysis, business recommendations

**Data Storytelling:**
Business problem → Data analysis → Findings → Insights → Recommendations

---

##  Project Summary

> Built an end-to-end Local Food Wastage Management System using **Python, Pandas, MySQL, SQL, and Streamlit** to manage food listings and analyze provider contribution, food availability, receiver claims, meal-type demand, and claim outcomes. The analysis identified key supply and claim patterns and highlighted opportunities to improve provider-receiver matching, monitor claim outcomes, and prioritize near-expiry food.

---

##  Data Note

The findings in this project are based on the dataset used for the application. Claim counts represent **claim records**, while food quantities represent quantities recorded in food listings. These metrics should not be interpreted as actual quantities successfully distributed unless the underlying claim data explicitly records the quantity claimed or delivered.
