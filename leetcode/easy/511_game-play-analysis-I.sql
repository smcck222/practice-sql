-- Problem: https://leetcode.com/problems/game-play-analysis-i/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    player_id, 
    MIN(event_date) AS first_login
FROM 
    Activity 
GROUP BY 
    player_id