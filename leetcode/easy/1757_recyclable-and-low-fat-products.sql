-- Problem: https://leetcode.com/problems/recyclable-and-low-fat-products/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT
    product_id 
FROM 
    Products 
WHERE 
    low_fats = 'Y' AND recyclable = 'Y'
