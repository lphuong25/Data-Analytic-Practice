SELECT 
    ROUND((AVG(age * education) - AVG(age) * AVG(education)) /
    (sqrt(AVG(age * age) - AVG(age) * AVG(age)) * 
    sqrt(AVG(education * education) - AVG(education) * AVG(education))), 2)
    AS age_education_correlation
FROM adult
WHERE age IS NOT NULL AND education IS NOT NULL;