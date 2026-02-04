SELECT
    "Name",
    Price
FROM bestsellers
WHERE Price = (
    SELECT MAX(Price)
    FROM bestsellers
);