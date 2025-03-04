-- Problem: https://leetcode.com/problems/combine-two-tables/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT firstName, lastName, city, state
FROM 
(Person LEFT JOIN Address ON Person.personId = Address.personId);