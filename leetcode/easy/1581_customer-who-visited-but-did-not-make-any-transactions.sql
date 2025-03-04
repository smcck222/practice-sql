-- Problem: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    V.customer_id, 
    COUNT(*) AS count_no_trans
FROM 
    Visits V LEFT JOIN Transactions T
        ON V.visit_id = T.visit_id 
WHERE 
    T.visit_id IS NULL 
GROUP BY 
    V.customer_id