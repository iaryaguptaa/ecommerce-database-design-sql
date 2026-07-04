# E-commerce Database Design & Business Intelligence Analysis (SQL)

A complete SQL capstone project demonstrating production-grade database architecture, data relational integrity, and analytical query execution modeled around 'aryashop'—a digital merchandise retailer.

This project covers database design lifecycle metrics including schema creation, primary/foreign key mappings, mock data ingestion, and advanced analytical windows for business performance tracking.


## Database Architecture & Schema Design

The relational schema is optimized for transactional consistency and normalization across five core data entities:
* customers: Tracks client registration profiles and demographics.
* products: Inventory ledger capturing catalog items, stock variables, and baseline pricing units.
* orders: Records purchase requests containing unique client IDs and processing timestamps.
* order_items: Intermediary mapping layer connecting products to orders with variable purchase volumes.
* payments: financial settlement log capturing transactions, payment gateways, and time constraints.


## Core SQL Implementations

* Relational Integrity: Enforces strict data models utilizing foreign key constraints (REFERENCES mappings) to prevent orphan transactional records.
* Optimized Data Types: Implements performance-conscious storage spaces including auto_increment sequences for indexing, dynamic character fields (VARCHAR), and explicit accounting fields like DECIMAL(10,2).
* Analytical Query Matrix: Built to execute complex analytical statements including multi-table INNER JOINS, subqueries, group aggregates, and order sorting matrices.


## Business Intelligence Analysis Solved

The analytical scripts inside this project simulate realistic corporate operations reporting, answering complex business performance metrics:
1. Sales Performance: Identifies the highest-grossing inventory item categories and products based on volume calculations.
2. Customer Insights: Isolates high-value purchasing accounts and evaluates distinct buying frequency trends.
3. Operational Tracking: Computes absolute revenue streams categorized across active transactional payment channels (e.g., Credit Card, UPI).


## Repository Contents

* ecommerce_tables.sql: Contains the structural DDL configurations defining tables and foreign key bindings.
* ecommerce_populate_tables.sql: Handles the dataset populating routine injects realistic test entities into storage.
* business_analysis.sql: The analytics processing suite consisting of business tracking queries and aggregates.
