# iTunes Music Store Analysis — SQL

## Project Overview

This project analyzes the iTunes Music Store database using SQL to understand sales performance, customer purchasing behavior, geographic revenue, artist and content performance, genre concentration, media-type trends, and support-representative/customer relationships.

## Business Objective

The analysis focuses on answering key business questions:

* What are the overall sales and revenue trends?
* Which customers generate the highest historical revenue?
* How frequently do customers purchase?
* Which countries generate the most revenue?
* Which artists, albums and tracks perform best?
* Which genres contribute the most revenue?
* How does genre performance vary by country?
* Are there observable media-type trends?
* Can pricing differences be linked to sales?
* How are high-value customers distributed across support representatives?

## Dataset

* Customers: 59
* Invoices: 614
* Total Revenue: 4,709.43
* Database: `itunes_analysis`

## Database Tables

* album
* artist
* customer
* employee
* genre
* invoice
* invoice_line
* media_type
* playlist
* playlist_track
* track

## Analysis Areas

### 1. Sales & Revenue Analysis

Analyzed total revenue, order volume, average order value and annual/monthly revenue trends.

### 2. Customer Analysis

Analyzed customer revenue, purchase frequency, average order value and purchase intervals.

### 3. Geographic Analysis

Compared revenue and customer concentration across countries and calculated revenue per customer.

### 4. Artist, Album & Track Analysis

Identified the highest-performing artists, albums and tracks based on sales/revenue.

### 5. Genre Analysis

Analyzed genre-level units sold and revenue, including country-level genre performance.

### 6. Media-Type Analysis

Compared media-type usage across years to identify changes in purchase volume.

### 7. Operational Analysis

Examined pricing availability and the relationship between support representatives and high-value customers.

## Key Findings

* The USA generated the highest country revenue at 1,040.49.
* The top five countries contributed approximately 57.9% of total revenue.
* Customers averaged approximately 10.4 purchases in the observed transaction history.
* The average time between purchases was 132.28 days.
* Rock generated 2,608.65 revenue, approximately 55.4% of total revenue.
* Queen generated the highest artist revenue at 190.08.
* Are You Experienced? was the highest-selling album with 187 units.
* MPEG audio files consistently represented the dominant media type.
* Purchased AAC usage declined from 12 units in 2017 to 3 units in 2020.
* Pricing analysis was limited because purchased tracks had a single observed price of 0.99.

## Business Investigation

The analysis identified several areas for further investigation:

* Why is revenue concentrated in a small number of geographic markets?
* Why does Canada have a lower revenue per customer than the overall customer average?
* Does catalog size explain differences in genre sales?
* What factors contributed to the decline in Purchased AAC usage?
* Which customers are potential re-engagement candidates based on purchase recency?
* What explains the different genre mix across countries?

## Limitations

* Purchased tracks have a single observed unit price, so price elasticity cannot be evaluated.
* Customer value represents historical revenue rather than predictive Customer Lifetime Value.
* Revenue concentration does not by itself establish customer preference or causal drivers.
* Small customer counts in some countries make revenue-per-customer comparisons less reliable.
* Further validation is required before interpreting employee geographic performance.

## Skills Demonstrated

SQL • Joins • Aggregations • GROUP BY • CASE statements • Subqueries • CTEs • Date Analysis • Customer Segmentation • KPI Analysis • Business Investigation • Data Interpretation

