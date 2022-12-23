# Write your MySQL query statement below
SELECT DISTINCT l.Num AS ConsecutiveNums
FROM Logs AS l
    INNER JOIN Logs l_next ON l.id + 1 = l_next.id
    INNER JOIN Logs l_fur ON l.id +2 = l_fur.id
WHERE l.NUM = l_next.Num
AND l.Num = l_fur.Num