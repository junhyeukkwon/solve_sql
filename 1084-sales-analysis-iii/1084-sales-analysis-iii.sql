# Write your MySQL query statement below
SELECT DISTINCT s.product_id , product_name
FROM Sales s 
    INNER JOIN Product p ON s.product_id = p.product_id
WHERE s.product_id NOT IN (
    SELECT DISTINCT product_id
    FROM Sales
    WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
)