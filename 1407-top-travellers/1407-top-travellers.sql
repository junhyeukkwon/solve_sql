# Write your MySQL query statement below
# SELECT name
#       ,IF(travelled_distance IS NULL, 0, travelled_distance) AS travelled_distance
# FROM Users u
#     LEFT JOIN (
#         SELECT user_id
#                ,SUM(distance) AS travelled_distance
#         FROM Rides
#         GROUP BY user_id
#     ) cte ON u.id = cte.user_id
# ORDER BY travelled_distance DESC, name ASC


SELECT u.name,
SUM(CASE WHEN u.id = r.user_id THEN r.distance ELSE 0 END) AS travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.id
ORDER BY SUM(r.distance) DESC, name;