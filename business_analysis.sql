USE ARYASHOP;
-- ARYASHOP E-COMMERCE BUSINESS INTELLIGENCE ANALYSIS QUERIES (VERIFIED)

-- 1. Total Revenue Stream Analysis
-- Calculates total gross revenue by joining order items with product prices.
SELECT 
    SUM(oi.quantity * p.price) AS Total_Gross_Revenue
FROM 
    order_items oi
INNER JOIN 
    products p ON oi.product_id = p.product_id;


-- 2. Top Selling Product Categories
-- Identifies which product categories are driving the most volume and revenue.
SELECT 
    p.category,
    SUM(oi.quantity) AS Total_Units_Sold,
    SUM(oi.quantity * p.price) AS Total_Revenue
FROM 
    order_items oi
INNER JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.category
ORDER BY 
    Total_Revenue DESC;


-- 3. High-Value Customers (Customer Lifetime Value - LTV)
-- Ranks customers based on their cumulative purchase history using the 'name' column.
SELECT 
    c.customer_id,
    c.name,
    COUNT(DISTINCT o.order_id) AS Total_Orders_Placed,
    SUM(oi.quantity * p.price) AS Customer_Lifetime_Value
FROM 
    customers c
INNER JOIN 
    orders o ON c.customer_id = o.customer_id
INNER JOIN 
    order_items oi ON o.order_id = oi.order_id
INNER JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    Customer_Lifetime_Value DESC
LIMIT 5;


-- 4. Payment Mode Performance Index
-- Analyzes transaction counts and total amounts settled via different payment modes.
SELECT 
    payment_mode,
    COUNT(payment_id) AS Total_Transactions,
    SUM(amount) AS Total_Settled_Amount
FROM 
    payments
GROUP BY 
    payment_mode
ORDER BY 
    Total_Settled_Amount DESC;


-- 5. Order Status & Logistics Overview
-- Monitors active supply chain metrics to track order statuses.
SELECT 
    order_status,
    COUNT(order_id) AS Order_Count
FROM 
    orders
GROUP BY 
    order_status
ORDER BY 
    Order_Count DESC;
