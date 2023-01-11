# Write your MySQL query statement below
# SELECT
#     s1.id, COALESCE(s2.student, s1.student) AS student
# FROM
#     seat s1
#         LEFT JOIN
#     seat s2 ON ((s1.id + 1) ^ 1) - 1 = s2.id
# ORDER BY s1.id;



SELECT
    CASE
        WHEN id%2 =1 AND id != (SELECT COUNT(*) FROM seat) THEN id+1
        WHEN id%2 =0 THEN id-1
    ELSE id
    END AS id, student
FROM seat
ORDER BY id ASC;