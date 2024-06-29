-- FEB 2024 LEETCODE -- 

'''
Write a solution to find all dates Id with higher temperatures compared to its previous dates (yesterday).
id is unique. And dates are not repeated.
'''

-- Solution 1 Submitted - Self Join or Cross Join with self.
SELECT 
    W1.id
FROM 
    Weather W1, Weather W2   
WHERE 
    (DATEDIFF(DAY,W2.recordDate, W1.recordDate) = 1) AND
    W2.temperature < W1.temperature

-- Solution 2 - Inner Join
SELECT 
    W1.id
FROM 
    Weather W1 INNER JOIN Weather W2 
    ON 
        DATEDIFF(DAY, W2.recordDate, W1.recordDate) = 1 AND
        W2.temperature < W1.temperature

-- Solution 3 - Self Join or Cross Join with self on the condition itself. 
SELECT 
    W1.id
FROM 
    Weather W1, Weather W2 
    ON 
        DATEDIFF(DAY, W2.recordDate, W1.recordDate) = 1 AND
        W2.temperature < W1.temperature

-- Solution 4 - CTEs

WITH CTE_CONDITION AS
(
    SELECT
        *,
    CASE
    WHEN LAG(recordDate) OVER (ORDER BY recordDate) = DATEADD(DAY, -1, recordDate) AND
    LAG(temperature) OVER (ORDER BY recordDate) < temperature THEN 'Y'
    END AS condition
    FROM Weather
)
SELECT 
    id
FROM 
    CTE_CONDITION
WHERE 
    condition ='Y'


-- Runtime - Solution 2 > Solution 1 > Solution 3


