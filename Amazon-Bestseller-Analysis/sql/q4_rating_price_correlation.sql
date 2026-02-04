SELECT 
    ROUND((AVG(User_rating * Price) - AVG(User_rating) * AVG(Price)) /
    (sqrt(AVG(User_rating * User_rating) - AVG(User_rating) * AVG(User_rating)) * 
    sqrt(AVG(Price * Price) - AVG(Price) * AVG(Price))), 2)
    AS rating_price_correlation
FROM bestsellers
WHERE User_rating IS NOT NULL AND Price IS NOT NULL;