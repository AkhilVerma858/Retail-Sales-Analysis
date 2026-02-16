Retail Sales Data Analysis using SQL (Oracle)
📌 Project Overview

This project performs an end-to-end analysis of retail transactional sales data using Oracle SQL. The objective is to transform raw transactional data into meaningful business insights that support strategic decision-making.

The analysis covers data understanding, data cleaning, KPI measurement, customer behavior analysis, and revenue growth trends.

🎯 Business Problem

Although the company collects transactional sales data, management lacks clear visibility into:

Overall revenue performance

Customer purchasing behavior

Product category contribution

Revenue growth trends

Customer retention patterns

Due to limited analytical insights, decision-making related to revenue growth, customer engagement, and product strategy becomes challenging.

🎯 Project Goal

The goal of this project is to analyze retail sales data and generate actionable insights that enable management to:

Improve revenue performance

Identify high-performing product categories

Understand customer behavior patterns

Monitor growth trends (YoY & MoM)

Strengthen customer retention strategies

🗂 Dataset Description

The dataset contains retail transactional records with the following key attributes:

transactions_id

sale_date

customer_id

gender

age

category

quantity

price_per_unit

total_sale

Each row represents a single product-level transaction.

🛠 Tools & Technologies Used

Oracle SQL

Window Functions (LAG, DENSE_RANK)

Aggregations (SUM, COUNT, AVG)

Analytical Functions

Data Cleaning using SQL

📂 Project Structure
Retail-Sales-Analysis/
│
├── data_understanding.sql
├── data_cleaning.sql
├── kpi_analysis.sql
├── growth_analysis.sql
└── README.md

📊 Key Performance Indicators (KPIs)

The following KPIs were calculated:

Total Revenue

Total Orders

Total Customers

Average Order Value (AOV)

Total Quantity Sold

Revenue by Category

Revenue by Gender

Top 10 Customers by Revenue

Purchase Frequency

Repeat vs New Customers

📈 Growth Analysis
Year-over-Year (YoY) Growth

Revenue growth percentage calculated using LAG() window function

Observed overall YoY growth of approximately 1.32%

Month-over-Month (MoM) Growth

Monthly revenue trends analyzed

Identified customer decline from Dec 2022 to Jan 2023

👥 Customer Analysis

Identified repeat vs new customers

Measured average purchase frequency

Analyzed demographic distribution by age and gender

Identified top-performing customers

🛍 Product Performance Analysis

Revenue contribution by category

Quantity sold by category

Monthly average price trend analysis

Identified best-selling category per period using ranking functions

🔍 Key Insights

Revenue growth is positive but relatively slow (~1.32% YoY).

Customer count decreased significantly from Dec 2022 to Jan 2023.

Revenue contribution across categories is relatively balanced.

Beauty category shows higher monthly price volatility.

Repeat customers contribute significantly to overall revenue.

A small group of top customers drives a large share of revenue.

💡 Business Recommendations

Improve customer retention strategies to reduce monthly customer drop.

Introduce targeted campaigns for repeat customers to increase frequency.

Investigate price volatility in Beauty category and assess pricing strategy.

Analyze top-performing customers for loyalty program opportunities.

Focus on growth acceleration strategies as YoY growth remains modest.

🚀 Future Enhancements

Profit margin analysis

Customer Lifetime Value (CLV)

RFM Segmentation

Python-based visualization

Dashboard development using Power BI

📌 Conclusion

This project demonstrates the use of SQL for structured business analysis, KPI development, and growth trend evaluation. It highlights the importance of transforming raw data into actionable insights for data-driven decision-making.