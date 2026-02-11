SELECT
    sex,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM adult), 2) AS proportion_more_than_50K
FROM adult
WHERE income = '>50K'
GROUP BY sex;