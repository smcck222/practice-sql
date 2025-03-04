-- Problem: https://leetcode.com/problems/big-countries/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

-- This is the solution
SELECT 
    name, 
    population, 
    area
FROM 
    World
WHERE 
    area >= 3000000 OR
    population >= 25000000

-- This is not necessary 
-- area >= NULL would evaluate as FALSE for records where there are NULL values, similar for population

SELECT 
    name, 
    population, 
    area
FROM 
    World
WHERE 
    ( (area >= 3000000) AND (area IS NOT NULL) ) 
    OR
    ( (population >= 25000000) AND (population IS NOT NULL) )



