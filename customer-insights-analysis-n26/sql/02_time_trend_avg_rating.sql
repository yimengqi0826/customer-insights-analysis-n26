SELECT
    strftime('%Y-%m', Review_Date) AS Period,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM Reviews
GROUP BY strftime('%Y-%m', Review_Date)

UNION ALL

SELECT
    'Overall' AS Period,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM Reviews;
