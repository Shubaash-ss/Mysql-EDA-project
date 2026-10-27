-- ===============================================================================
-- Date Range and Customer Age Exploration
-- ===============================================================================
-- Purpose:
    -- Determine the temporal boundaries of key data points.
    -- Understand the range of historical data and customer demographics.

USE DataWarehouseAnalytics;

-- 1. Determine the first and last order date and the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    TIMESTAMPDIFF(
        MONTH, 
        MIN(order_date), 
        MAX(order_date)
    ) AS order_range_months
FROM gold_fact_sales;


-- 2. Find the oldest and youngest customers based on birthdate and calculate their ages
SELECT 
    MIN(birthdate) AS oldest_birthdate,
    TIMESTAMPDIFF(
        YEAR, 
        MIN(birthdate), 
        CURDATE()
    ) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    TIMESTAMPDIFF(
        YEAR, 
        MAX(birthdate), 
        CURDATE()
    ) AS youngest_age
FROM gold_dim_customers;


SELECT COUNT(*) AS total_rows FROM gold_dim_customers;
