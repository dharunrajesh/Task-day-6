Task Day 6
Sales Trend Analysis Using Aggregations

🍫 Chocolate Sales SQL Project
This repository contains a SQL project based on a fictional Chocolate Sales dataset. The project focuses on data cleaning, type conversion, aggregation, and reporting using SQL queries in MySQL.

📂 Project Files
new chocolate sales.sql — SQL script to create, populate, and manage the chocolate_sales table.
📊 Dataset Overview
The dataset includes the following columns:

Column Name	Description
Sales Person	Name of the salesperson
Country	Country where the sale happened
Product	Type of chocolate sold
Date	Date of the sale (format: dd-mmm-yy)
Amount	Sale amount (formatted with $ and ,)
Boxes Shipped	Number of boxes shipped
🛠️ Key SQL Operations
Data Cleaning

Converted Amount column from text to numeric by removing $ and ,.
Converted Date column into proper DATE format.
Schema Alteration

Changed the datatype of Amount to DECIMAL(10,2).
Aggregate Queries

Total and average sales by country, product, and salesperson.
Monthly revenue summaries.
Top 3 products by sales.
Safe Update Handling

Handled Error Code: 1175 by disabling safe update mode for bulk updates.
📝 Sample Queries
Top 3 Products by Sales

SELECT Product, SUM(Amount) AS Total_Sales
FROM chocolate_sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 3;
