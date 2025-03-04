-- Problem: https://leetcode.com/problems/invalid-tweets/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT tweet_id FROM Tweets
WHERE LEN(content) > 15
