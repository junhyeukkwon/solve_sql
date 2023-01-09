# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE (id%2) = 1
AND NOT description REGEXP 'boring'
ORDER BY rating DESC