# FedEx Logistics & Delivery Performance Analysis

##  Project Overview

This project analyzes 10,324 logistics shipment records to understand
delivery performance, shipment-mode efficiency, geographic delays,
freight-cost patterns, product concentration, and order cycle times.

The objective is to identify logistics bottlenecks and provide
data-driven recommendations to improve delivery reliability and
cost efficiency.

## Business Problem

The analysis investigates:

- What percentage of shipments are delivered on time?
- Which shipment modes experience delays?
- Which countries show higher delivery delays?
- What patterns exist in freight costs?
- Which product groups contribute most to revenue?
- Are there unusual delivery-cycle or cost records?

##  Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- Exploratory Data Analysis

##  Dataset

- Records: 10,324
- Features: 33
- Domain: Logistics / Supply Chain
- Shipment modes: Air, Ocean, Truck, Air Charter
- Includes delivery, vendor, product, quantity, weight,
  freight cost and order lifecycle information.

##  Key Findings

- 61.25% of shipments were delivered On Time.
- 27.26% were delivered Early.
- 11.49% were Delayed.
- Ocean shipments showed approximately 3 days average delay.
- Most order cycles were concentrated around 50–250 days.
- Some orders exceeded 700 days.
- Approximately 388 freight-cost outliers were identified.
- ARV contributed 80%+ of revenue in the analysis.
- Quantity and line-item value had a strong 0.81 correlation.

##  Business Insights

1. Shipment-mode selection has an important relationship with
   delivery performance.
2. Delivery performance varies across geographic locations.
3. Freight-cost outliers require additional investigation.
4. Long delivery cycles create opportunities for proactive monitoring.
5. Revenue concentration in ARV represents a potential concentration risk.

##  Business Recommendations

- Optimize shipment-mode selection based on urgency and cost.
- Develop vendor and country performance scorecards.
- Investigate freight-cost anomalies.
- Monitor shipments with high delivery-risk indicators.
- Introduce automated data-quality validation.
- Monitor product-group concentration.

##  Project Structure

FedEx/
│
├── SCMS_Delivery_History_Dataset.csv
├── Sample_EDA_Submission_Template_for_FedEx_Logistics_Analyis.ipynb
└── README.md

##  Project Outcome

The analysis provides a structured view of delivery performance,
logistics costs, shipment modes, geographic variations and product
concentration, helping identify areas for further operational
investigation and optimization.
