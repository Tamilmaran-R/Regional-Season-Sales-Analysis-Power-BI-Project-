CREATE DATABASE IF NOT EXISTS festival_sales_db
USE festival_sales_db


CREATE TABLE festive_data (
    Sale_ID INT PRIMARY KEY,
    Sale_Date DATE NOT NULL,
    Region VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Product_Subcategory VARCHAR(50) NOT NULL,
    Product_Name VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    Unit_Price DECIMAL(10,2) NOT NULL,
    Total_Sales DECIMAL(15,2) NOT NULL,
    Discount_Percentage DECIMAL(5,2) DEFAULT 0,
    Profit DECIMAL(15,2) NOT NULL,
    Season VARCHAR(20) NOT NULL,
    Festival VARCHAR(50) DEFAULT 'None',
    Payment_Mode VARCHAR(20) DEFAULT 'Cash'
);

--Total sales by Region--

select Region,sum(Total_Sales) as Total_Revenue
from festive_data
group by Region
order by Total_Revenue Desc

--Best Performing Region per Season--
SELECT 
    Season,
    Region,
    SUM(Total_Sales) AS Total_Revenue
FROM festive_data
GROUP BY Season, Region
ORDER BY Season, Total_Revenue DESC 

--------------------------------------------------------------------
Month-on-Month Growth
select 
date_format(Sale_date,'%Y-%m') as month,
sum(Total_Sales) as Total_sale,
lag(sum(Total_Sales))over(order by date_format(Sale_date,'%Y-%m'))as previous_month
from festive_data
group by month
order by month
----------------------------------------------------------------------
Festival Sales Spikes

select Season,sum(Total_Sales) as Festival_Revenue
from festive_data
where Season!='None'
group by Season
order by Festival_Revenue desc
-------------------------------------------------------------------------
Top 10 Products by Revenue

select Product_Category,sum(Total_Sales)as Total_revenue
from festive_data
group by Product_Category
order by Total_revenue desc
limit 10
---------------------------------