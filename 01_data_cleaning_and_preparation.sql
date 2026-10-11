CREATE OR REPLACE TABLE `data-analytics-project-510418.ecommerce_analytics.project_sales_cleaned` AS
SELECT 
    order_item_id,
    order_id,
    user_id,
    product_id,
    sale_price,
    created_at,
    CASE 
        WHEN category = 'Iné' OR category IS NULL THEN 'Others'
        ELSE category 
    END AS category,
    product_name
FROM `data-analytics-project-510418.ecommerce_analytics.raw_sales`;
