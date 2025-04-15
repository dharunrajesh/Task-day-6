create database sales;

use sales;

UPDATE chocolate_sales 
SET Amount = REPLACE(REPLACE(Amount, '$', ''), ',', '');

describe chocolate_sales;

select * from chocolate_sales;

select amount from chocolate_sales;

-- Total Sales by Country

select Country, SUM(Amount) AS Total_Sales
from chocolate_sales
group by Country
order by Total_Sales DESC;

-- Top 3 Products by Total Sales

select Product, SUM(Amount) AS Total_Sales
from chocolate_sales
group by Product
order by Total_Sales DESC
limit 3;

-- Monthly Sales Summary

select date_format(str_to_Date(Date, '%d-%b-%y'), '%Y-%m') as Month,
		sum(Amount) as Total_Sales
from chocolate_sales
group by Month
order by Total_Sales desc;        

-- Salesperson Performance

select 'Sales Person' , sum(Amount) as Total_Sales
from chocolate_sales
group by 'Sales Person'
order by Total_Sales desc;

--  Total Boxes Shipped by Product

select Product, count('Boxes Shipped') as Total_Boxes
from chocolate_sales
group by Product
order by Total_Boxes desc;

