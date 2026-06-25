SELECT
    theme,
    ROUND(AVG(rating), 2) AS Average_Rating
FROM reviews
GROUP BY theme
ORDER BY Average_Rating DESC;
