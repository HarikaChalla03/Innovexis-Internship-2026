# Local Food Wastage Management System | SQL, Python, MySQL & Streamlit

## Project Overview

Developed an end-to-end food redistribution analytics system to manage food providers, receivers, food listings and claims. Built a MySQL database and Streamlit application, and used SQL/Python to analyze food availability, provider contribution, receiver activity and claim outcomes.

## Business Problem

Food providers may have surplus food while receivers have varying levels of demand. Without centralized tracking, it is difficult to monitor available food, claims, distribution status and location-level gaps.

# Objectives
Track food providers, receivers and food listings.
Analyze food availability by provider type, location and food type.
Understand receiver and claim activity.
Monitor Completed, Cancelled and Pending claims.
Identify potential supply-demand and geographic gaps.
Support better food allocation decisions.

## Features
- Dashboard with key metrics such as providers, receivers, food listings, claims, and total quantity
- SQL-based analysis for business insights
- Food listings filter by city, food type, meal type, and provider type
- CRUD operations for adding, updating, and deleting records
- MySQL database integration
- Interactive Streamlit user interface
- Claim tracking and status analysis
- Data-driven insights for food availability and utilization

## Tech Stack
- Frontend/UI: Streamlit
- Backend: Python
- Database: MySQL
- Libraries: Pandas, SQLAlchemy
- Tool: Visual Studio

## Project Structure
Local_Food_Wastage_Management_System/
|
|--app.py
|--Database_Creation.ipynb
|--Queries.py
|--data_preparation.ipynb
|--feature_engineering.ipynb
|--requirements.txt
|--README.md

## Database Design

- Providers
- Receivers
- Food Listings
- Claims

## Key Business Questions

1. Which provider type contributes the most food?
2. Which cities have the most food listings?
3. Which food types are most available?
4. Which receivers have the highest claim activity?
5. Which meal type is claimed most?
6. What is the claim-status distribution?
7. Which providers have the highest completed claims?
8. Which cities have high cancellation/pending activity?

# Key Findings:

25,894 units of food were recorded across food listings.
Restaurants contributed the highest listed quantity among provider types: 6,923 units.
Breakfast had the highest claim activity with 278 claims.
Vegetarian was the most common food type with 337 listings.
Claim status was almost evenly distributed: 33.9% Completed, 33.6% Cancelled and 32.5% Pending.
Barry Group had the highest listed quantity among the providers shown: 179 units.
East Heatherport recorded 7 cancelled claims, while South Kathryn recorded 5 completed claims.

# Business Insights

Supply: Food availability was distributed across multiple provider types, with restaurants contributing the highest quantity.
Demand: Breakfast showed the highest claim activity, indicating relatively stronger demand for breakfast-related listings.
Distribution: Only about one-third of claims were completed, while cancelled and pending claims represented substantial portions of total claim activity.
Geography: Claim outcomes varied across cities, suggesting that location-level monitoring could help identify potential fulfillment or matching issues.

# Business Recommendations
Improve provider-receiver matching at city level.
Monitor Completed, Cancelled and Pending claims by location.
Investigate cities with unusually high cancellations or pending claims.
Prioritize near-expiry food listings.
Monitor frequently claimed food and meal categories.
Track listing → claim → completed conversion in future dashboard versions.


