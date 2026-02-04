SELECT
    CASE
        WHEN Reviews < 100 THEN 'Under 100'
        WHEN Reviews BETWEEN 100 AND 500 THEN '100 to 500'
        WHEN Reviews BETWEEN 501 AND 1000 THEN '501 to 1000'
        WHEN Reviews BETWEEN 1001 AND 5000 THEN '1001 to 5000'
        WHEN Reviews BETWEEN 5001 AND 10000 THEN '5001 to 10000'
        WHEN Reviews BETWEEN 10001 AND 30000 THEN '10001 to 30000'
        WHEN Reviews BETWEEN 30001 AND 50000 THEN '30001 to 50000'
        WHEN Reviews > 50000 THEN 'Over 50000'
    END AS review_range,
    COUNT(*) AS book_count
FROM bestsellers
WHERE Reviews IS NOT NULL
GROUP BY review_range
ORDER BY 
    CASE
        WHEN review_range = 'Under 100' THEN 1
        WHEN review_range = '100 to 500' THEN 2
        WHEN review_range = '501 to 1000' THEN 3
        WHEN review_range = '1001 to 5000' THEN 4
        WHEN review_range = '5001 to 10000' THEN 5
        WHEN review_range = '10001 to 30000' THEN 6
        WHEN review_range = '30001 to 50000' THEN 7
        WHEN review_range = 'Over 50000' THEN 8
    END;