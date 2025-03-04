-- Problem: https://leetcode.com/problems/duplicate-emails/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT email AS 'Email' FROM Person
GROUP BY email 
HAVING COUNT(*) > 1; 