-- Problem: https://leetcode.com/problems/find-customer-referee/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

-- 591 ms
SELECT 
    name
FROM 
    Customer 
WHERE 
    referee_id <> 2 OR
    referee_id IS NULL


-- 906 ms
SELECT 
    name 
FROM 
    Customer 
WHERE 
    referee_id <> 2 OR 
    ISNULL(referee_id)