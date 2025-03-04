-- Problem: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    EU.unique_id, 
    E.name
FROM 
    Employees E LEFT JOIN EmployeeUNI EU 
        ON E.id = EU.id 
    