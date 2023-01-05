# Write your MySQL query statement below
SELECT d.name AS Department
      ,ct.name AS Employee
      ,salary AS Salary
FROM (
    SELECT *
          ,DENSE_RANK() OVER(partition by departmentId order by salary DESC) as ranking
    FROM Employee
) as ct
    INNER JOIN Department d ON ct.departmentId = d.id
WHERE ranking in (1,2,3)