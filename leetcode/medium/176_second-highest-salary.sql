-- Problem: https://leetcode.com/problems/second-highest-salary/description/
-- Difficulty: Medium
-- Date: 2025-03-04

SELECT MAX(salary) as 'SecondHighestSalary' 
FROM Employee 
WHERE salary NOT IN (SELECT MAX(salary) FROM Employee);