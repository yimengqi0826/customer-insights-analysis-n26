SELECT
    Rating,
    COUNT(*) AS Review_Count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percentage
FROM Reviews
GROUP BY Rating
ORDER BY Rating;
