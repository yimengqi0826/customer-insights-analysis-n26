-- Filter only 1 star and 2 star negative reviews
CREATE VIEW IF NOT EXISTS Negative_Reviews AS
SELECT *
FROM Reviews
WHERE Rating <= 2;

-- Theme distribution analysis 
SELECT
    Theme,
    COUNT(*) AS Review_Count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percentage
FROM Negative_Reviews
WHERE Theme IS NOT NULL AND Theme <> ''
GROUP BY Theme
ORDER BY Review_Count DESC;
