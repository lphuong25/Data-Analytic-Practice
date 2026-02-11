SELECT
    ROUND(AVG(age), 2) AS average_age
FROM adult
WHERE income = '>50K';