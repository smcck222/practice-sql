-- Problem: https://leetcode.com/problems/customers-who-never-order/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT Customers.name AS 'Customers' FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);