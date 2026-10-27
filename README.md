# 📊 MySQL Data Warehouse Exploratory Data Analysis (EDA)

## 🔍 Project Overview
This project features a comprehensive Exploratory Data Analysis (EDA) conducted on a retail data warehouse using **MySQL**. The objective is to examine database structures, identify temporal bounds of business data, compute key performance indicators (KPIs), analyze customer demographics, and evaluate product and customer performance trends.

---

## 📂 Project Structure & Scripts
The analysis is structured into modular SQL scripts, each targeting a specific analytical goal:

1. **`Database_Exploration.sql`**[cite: 4]
   - Explores database metadata, lists all available tables, and inspects column schemas (`INFORMATION_SCHEMA.TABLES` and `INFORMATION_SCHEMA.COLUMNS`)[cite: 4].
2. **`Date_range_Customer_Age_Exploration.sql`**[cite: 5]
   - Determines temporal boundaries such as the first and last order dates and total duration in months[cite: 5].
   - Calculates customer age demographics (oldest and youngest customers) using `TIMESTAMPDIFF` and `CURDATE()`[cite: 5].
3. **`Dimension_Exploration.sql`**[cite: 6]
   - Extracts unique dimension attributes including customer countries and product categories, subcategories, and product names[cite: 6].
4. **`Measures_Exploration.sql`**[cite: 8]
   - Computes foundational business metrics such as total sales, total quantity sold, average selling prices, total orders, unique products, and active customers[cite: 8].
5. **`Magnitude_Analysis.sql`**[cite: 7]
   - Quantifies data distribution across multiple dimensions, including total customers by country and gender, average costs by product category, and revenue distribution by category and customer[cite: 7].
6. **`Ranking_Analysis.sql`**[cite: 9]
   - Evaluates top-performing and underperforming entities using `LIMIT` and window functions (`RANK() OVER`) to find top revenue-generating products, top customers, and accounts with the fewest orders[cite: 9].

---

## 🛠️ Technical Stack & Skills Demonstrated
* **Database Management System:** MySQL
* **SQL Techniques Applied:**
  * **Aggregate Functions:** `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`[cite: 7, 8]
  * **Window Functions:** `RANK() OVER (ORDER BY ...)`[cite: 9]
  * **Joins & Grouping:** `LEFT JOIN`, `GROUP BY`, `ORDER BY`, `DISTINCT`[cite: 6, 7, 9]
  * **Metadata Queries:** `INFORMATION_SCHEMA` utilization[cite: 4]
  * **Date & Time Calculations:** `TIMESTAMPDIFF()`, `CURDATE()`[cite: 5]

---

## 🚀 How to Run the Scripts
1. Clone this repository or download the `.sql` files.
2. Open your MySQL environment (e.g., **MySQL Workbench**).
3. Execute the scripts sequentially against your target database (`USE DataWarehouseAnalytics;`)[cite: 5, 8, 9].
