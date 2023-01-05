# Write your MySQL query statement below
SELECT d.name AS Department, ct.name AS Employee, ct.salary AS Salary
FROM (
    SELECT *
          ,DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS ranking
    FROM Employee
) AS ct
    INNER JOIN Department d ON ct.departmentId = d.id
WHERE ranking = 1