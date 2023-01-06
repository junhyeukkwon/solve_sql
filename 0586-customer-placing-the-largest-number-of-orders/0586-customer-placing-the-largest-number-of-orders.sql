# Write your MySQL query statement below
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER By COUNT(*) DESC
LIMIT 1