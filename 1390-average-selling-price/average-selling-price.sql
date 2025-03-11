# Write your MySQL query statement below
SELECT p.product_id, IFNULL(ROUND(SUM(price*units)/SUM(units),2),0) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS U
ON p.product_id = u.product_id
AND purchase_date BETWEEN start_date and end_date
GROUP BY p.product_id