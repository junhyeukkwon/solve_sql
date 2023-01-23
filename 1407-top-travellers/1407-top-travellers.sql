# Write your MySQL query statement below
SELECT name
      ,IF(travelled_distance IS NULL, 0, travelled_distance) AS travelled_distance
FROM Users u
    LEFT JOIN (
        SELECT user_id
               ,SUM(distance) AS travelled_distance
        FROM Rides
        GROUP BY user_id
    ) cte ON u.id = cte.user_id
ORDER BY travelled_distance DESC, name ASC