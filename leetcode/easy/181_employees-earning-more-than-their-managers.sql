-- Problem: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT A.name as 'Employee' 
FROM Employee A, Employee B
WHERE (A.salary > B.salary) AND (A.managerId = B.id); 