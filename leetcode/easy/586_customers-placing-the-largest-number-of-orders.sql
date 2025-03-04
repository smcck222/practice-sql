-- Problem: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

-- This one is really bad - 2263 ms
SELECT customer_number
FROM Orders 
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;

-- This one is way better - 702 ms
SELECT customer_number FROM Orders 
GROUP BY customer_number 
HAVING COUNT(order_number) = 
(SELECT MAX(num_of_orders) FROM (SELECT COUNT(order_number) as 'num_of_orders' FROM Orders GROUP BY customer_number) as temp);
