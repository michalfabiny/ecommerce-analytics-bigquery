CREATE OR REPLACE TABLE `data-analytics-project-510418.ecommerce_analytics.orders_optimized`
PARTITION BY DATE(created_at)
CLUSTER BY category, user_id AS
SELECT * 
FROM `data-analytics-project-510418.ecommerce_analytics.project_sales_cleaned`;
