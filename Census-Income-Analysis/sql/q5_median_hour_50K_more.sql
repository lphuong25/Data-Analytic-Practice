SELECT
    hours_per_week
FROM adult
ORDER BY hours_per_week
LIMIT 1
OFFSET (SELECT COUNT(*) FROM adult
WHERE income = '>50K' AND hours_per_week IS NOT NULL) / 2;