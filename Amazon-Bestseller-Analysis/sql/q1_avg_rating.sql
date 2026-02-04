SELECT 
    round(avg("User_rating"), 2) AS average_rating
FROM bestsellers
WHERE "User_rating" IS NOT NULL;