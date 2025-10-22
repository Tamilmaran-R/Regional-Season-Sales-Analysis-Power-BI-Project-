

# 📊 Regional & Season Sales Analysis (Power BI Project)

## 🧠 **Project Overview**

This Power BI dashboard analyzes **regional and seasonal sales performance** across multiple product categories and states in India.
It helps identify **top-performing regions**, **seasonal revenue trends**, and **profitability insights**, enabling data-driven decision-making for sales and marketing strategies.

---

## 🎯 **Objective**

* To understand how **sales and profit vary by region and season**.
* To identify **high-performing states, product categories, and payment modes**.
* To provide **data-driven insights** for improving regional marketing and inventory planning.

---

## 🧩 **Dataset Description**

The dataset contains transactional-level sales data with attributes such as:

| Column Name           | Description                                        |
| --------------------- | -------------------------------------------------- |
| `Sale_ID`             | Unique identifier for each sale                    |
| `Sale_Date`           | Date of sale transaction                           |
| `Region`              | Region of sale (North, South, East, West, Central) |
| `State`               | Indian state where sale occurred                   |
| `Product_Category`    | Main category of the product                       |
| `Product_Subcategory` | Specific type of product                           |
| `Quantity`            | Units sold                                         |
| `Unit_Price`          | Price per unit                                     |
| `Total_Sales`         | Total sales amount                                 |
| `Discount_Percentage` | Discount applied on sale                           |
| `Profit`              | Profit earned from sale                            |
| `Season`              | Season of the sale (Winter, Summer, Monsoon, etc.) |
| `Festival`            | Major festival associated with the sale            |
| `Payment_Mode`        | Mode of transaction (Cash, Card, UPI, etc.)        |

---

## ⚙️ **Process Workflow**

### 1. **Data Loading**

* Imported CSV dataset into Power BI Desktop.
* Verified column types (Date, Numeric, Text).

### 2. **Data Cleaning & Transformation (Power Query)**

* Removed duplicates and null values.
* Extracted `Month`, `Quarter`, and `Year` from `Sale_Date`.
* Created calculated columns for `Profit Margin` and `Discounted Price`.

### 3. **Data Modeling**

* Created relationships between `Region`, `Season`, and `Product` tables.
* Added **hierarchies** for drill-down analysis (Region → State → Product).

### 4. **DAX Measures Used**

Some of the DAX formulas include:

```DAX
Total Revenue = SUM(Sales[Total_Sales])
Total Profit = SUM(Sales[Profit])
Profit Margin % = DIVIDE([Total Profit], [Total Revenue]) * 100
Average Discount % = AVERAGE(Sales[Discount_Percentage])
Sales by Season = CALCULATE([Total Revenue], ALLEXCEPT(Sales, Sales[Season]))
```

---

## 📊 **Dashboard Highlights**

* 🌍 **Regional Performance View:** Sales and profit comparison by region and state.
* 🌦️ **Seasonal Trends:** Revenue and profit variation by season.
* 🛍️ **Category Insights:** Top-selling product categories and subcategories.
* 💰 **Profitability View:** Profit margin by discount and payment mode.
* 📈 **Time-Series Analysis:** Monthly and quarterly sales trend visualization.

---

## 🔍 **Key Insights**

✅ South & Central regions generated the **highest revenue** overall.
✅ **Summer & Festival seasons** saw the largest sales spikes.
✅ **Home Appliances** and **Electronics** categories dominated revenue share.
✅ UPI and Card payments showed **higher average order values**.
✅ Discounts between **5–10%** optimized profit margins effectively.

---

## 🧰 **Tools & Technologies**

| Tool                                | Purpose                                   |
| ----------------------------------- | ----------------------------------------- |
| **Power BI Desktop**                | Data visualization and dashboard creation |
| **DAX (Data Analysis Expressions)** | Custom measures and KPIs                  |
| **Power Query**                     | Data cleaning and transformation          |
| **Excel / CSV**                     | Source data management                    |

---

## ▶️ **How to Run**

1. Download the `.pbix` file from this repository.
2. Open it using **Power BI Desktop (Version 2023 or later)**.
3. Explore visual reports and filters interactively.
4. Modify or connect new data sources as needed.

---

## 📈 **Dashboard Preview**

<img width="1193" height="656" alt="Screenshot 2025-10-22 115355" src="https://github.com/user-attachments/assets/a38288a3-81c4-4273-97db-1432ce442e10" />

<img width="1166" height="656" alt="Screenshot 2025-10-22 115414" src="https://github.com/user-attachments/assets/0a2c63d4-927b-4261-b398-6e0f46f1fcdc" />

<img width="1186" height="652" alt="Screenshot 2025-10-22 115431" src="https://github.com/user-attachments/assets/c321c6a3-b5f5-46c1-aeb5-4e102557ac7d" />

---

