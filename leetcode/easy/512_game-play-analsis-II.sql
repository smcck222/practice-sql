-- Problem: https://leetcode.com/problems/game-play-analysis-ii/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

WITH first_games AS(
    SELECT 
        player_id, 
        MIN(event_date) AS first_game_date
    FROM 
        Activity 
    GROUP BY 
        player_id
)
SELECT 
    Activity.player_id, 
    device_id
FROM 
    Activity INNER JOIN first_games 
        ON Activity.player_id = first_games.player_id 
            AND Activity.event_date = first_games.first_game_date
    