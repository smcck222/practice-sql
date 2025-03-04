-- Problem: https://leetcode.com/problems/product-sales-analysis-i/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    product_name, year, price
FROM 
    Sales S INNER JOIN Product P 
        ON S.product_id = P.product_id 
