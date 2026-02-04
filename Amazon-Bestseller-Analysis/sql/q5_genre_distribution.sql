SELECT
    Genre,
    COUNT(*) AS genre_count,
    ROUND(COUNT(*) * 100.0/(SELECT COUNT(*) FROM bestsellers), 2) AS genre_percentage
FROM bestsellers
WHERE Genre IS NOT NULL
GROUP BY Genre