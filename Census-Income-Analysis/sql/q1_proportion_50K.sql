SELECT
    ROUND(COUNT(CASE WHEN income = '>50K' THEN 1 END) * 100.0 / COUNT(*), 2) AS proportion_more_than50K
FROM adult;