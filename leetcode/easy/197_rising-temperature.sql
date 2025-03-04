-- Problem: https://leetcode.com/problems/rising-temperature/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

-- 1051 ms
SELECT 
    W1.id
FROM 
    Weather W1, Weather W2
WHERE 
    (DATEDIFF(DAY,W2.recordDate, W1.recordDate) = 1) AND
    W2.temperature < W1.temperature

-- 489 ms 
SELECT 
    W1.id
FROM 
    Weather W1, Weather W2
WHERE 
    (DATEDIFF(DAY,W2.recordDate, W1.recordDate) = 1) AND
    W2.temperature < W1.temperature