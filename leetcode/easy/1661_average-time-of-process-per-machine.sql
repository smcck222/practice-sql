-- Problem: https://leetcode.com/problems/average-time-of-process-per-machine/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

-- Factory with multiple machines running multiple processes. 
-- avg time per machine = sum(end - start) / number of proccesses 

-- 329 ms
WITH start_times AS (
    SELECT 
        timestamp, 
        machine_id, 
        process_id 
    FROM 
        Activity 
    WHERE 
        activity_type = 'start'
), 
end_times AS (
    SELECT 
        timestamp, 
        machine_id, 
        process_id 
    FROM 
        Activity 
    WHERE 
        activity_type = 'end'
)

SELECT 
    start_times.machine_id, 
    ROUND(SUM(end_times.timestamp - start_times.timestamp) / COUNT(*),3) AS processing_time

FROM 
    start_times INNER JOIN end_times 
        ON start_times.machine_id = end_times.machine_id 
            AND start_times.process_id = end_times.process_id
GROUP BY 
    start_times.machine_id


-- 290 ms
WITH start_times AS (
    SELECT 
        timestamp, 
        machine_id, 
        process_id 
    FROM 
        Activity 
    WHERE 
        activity_type = 'start'
), 
end_times AS (
    SELECT 
        timestamp, 
        machine_id, 
        process_id 
    FROM 
        Activity 
    WHERE 
        activity_type = 'end'
)

SELECT 
    start_times.machine_id, 
    ROUND(SUM(end_times.timestamp - start_times.timestamp) / COUNT(*),3) AS processing_time

FROM 
    start_times INNER JOIN end_times 
        ON start_times.machine_id = end_times.machine_id 
            AND start_times.process_id = end_times.process_id
GROUP BY 
    start_times.machine_id

-- 270 ms
SELECT 
    A_S.machine_id,
	ROUND(SUM(A_E.timestamp - A_S.timestamp) / COUNT(*), 3) AS processing_time
FROM 
	Activity A_S INNER JOIN Activity A_E 
		ON A_S.machine_id = A_E.machine_id 
        AND A_S.process_id = A_E.process_id 
        AND A_S.activity_type = 'start' 
        AND A_E.activity_type = 'end'
GROUP BY 
	A_S.machine_id