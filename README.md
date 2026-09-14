# Customer-Profitability-Churn-Analysis
An end-to-end analytics project evaluating CLV and Churn Risk using SQL, Excel, and Power BI.
# Customer Profitability & Churn Analysis Dashboard

## 📊 Project Overview
This project delivers an end-to-end business analytics solution designed to evaluate **Customer Lifetime Value (CLV)** and identify high-risk **Churn Segments**. By shifting focus from raw revenue to net profitability, the project applies **Activity-Based Costing (ABC)** to uncover hidden service overheads (support calls and delivery logistics).

## 🛠️ Tools & Technologies Used
* **SQL (MySQL):** Database creation, data insertion, and deep business logic queries.
* **Microsoft Excel:** Initial data collection and structured source management.
* **Power BI & Power Query:** Data cleaning, relationship modeling, and interactive visualization.
* **DAX:** Advanced measures for Key Performance Indicators (KPIs).

## 🚀 Key Business Metrics Developed (DAX)
* **Total Revenue** = `SUM(Transactions[Revenue])`
* **Total Service Cost (ABC)** = Factored in processing costs, support calls (₹100/call), and delivery distance (₹10/km).
* **Net Profit** = `[Total Revenue] - [Total Service Cost]`
* **Churn Rate %** = Monitored the percentage of lost customer accounts.



## 📂 How to Review This Project
1. Look into `SQL_Queries.sql` to check the backend analytical queries.
2. Download `Dashboard.pbix` to view and interact with the data model in Power BI Desktop.
