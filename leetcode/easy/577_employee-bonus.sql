-- Problem: https://leetcode.com/problems/employee-bonus/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    name, 
    bonus
FROM 
    Employee E LEFT JOIN Bonus b
        ON E.empID = b.empID 
WHERE 
    bonus < 1000 OR bonus IS NULL