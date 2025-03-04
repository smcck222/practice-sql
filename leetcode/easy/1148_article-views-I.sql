-- Problem: https://leetcode.com/problems/article-views-i/description/
-- Difficulty: Easy 
-- Date: 2025-03-04

SELECT 
    DISTINCT(author_id) AS id
FROM 
    Views
WHERE 
    author_id = viewer_id 
ORDER BY 
    author_id