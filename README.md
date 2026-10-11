# Executive E-Commerce Performance Overview

🔗 **Live Dashboard:** [Executive E-Commerce Performance Overview](https://datastudio.google.com/reporting/60f019bc-6f8c-4a09-94a8-a876dc9fd264)

This repository contains the data model and SQL scripts for the **Executive E-Commerce Performance Overview** dashboard built in **Google Looker Studio** on top of the **Google BigQuery** data warehouse.

The project handles e-commerce data cleaning, transformation, standardization of unassigned product categories to `Others`, creation of a reporting View, and query cost optimization in BigQuery.

---

## 🏗️ Data Model Architecture

The data model consists of 3 SQL layers:

1. **`project_sales_cleaned`** (Cleaned Table): Cleaned base data with missing and unassigned categories standardized to `Others`.
2. **`vw_locker_dashboard_kpi`** (Reporting View): Dynamic database view serving as a Single Source of Truth for Google Looker Studio.
3. **`orders_optimized`** (Partitioned & Clustered Table): Production table designed for cost and performance optimization in BigQuery.

---

## 🛠️ Repository Contents

* **`01_data_cleaning_and_preparation.sql`**: Data cleaning and category transformation using `CASE WHEN`.
* **`02_looker_dashboard_view.sql`**: DDL script for the reporting View at the order line item level.
* **`03_table_optimization_partition_cluster.sql`**: DDL script for table optimization using `PARTITION BY DATE(created_at)` and `CLUSTER BY category, user_id`.

---

## 📊 Tracked Business Metrics (KPIs)

* **Total Revenue**: Sum of e-commerce revenue (`SUM(sale_price)`).
* **Total Orders**: Count of unique completed orders (`COUNT(DISTINCT order_id)`).
* **Active Customers**: Count of unique active customers (`COUNT(DISTINCT user_id)`).
* **Avg Item Value**: Average price per sold item (`AVG(sale_price)`).

---

## 🚀 Tech Stack

* **Data Warehouse**: Google BigQuery (Google Standard SQL)
* **Data Visualization**: Google Looker Studio
* **Optimization**: Partitioning by Date, Clustering by Category & User ID
