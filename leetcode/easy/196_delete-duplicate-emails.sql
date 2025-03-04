-- Problem: https://leetcode.com/problems/delete-duplicate-emails/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

DELETE t2
FROM Person t1 JOIN Person t2
ON (t1.id < t2.id) AND (t1.email = t2.email); 