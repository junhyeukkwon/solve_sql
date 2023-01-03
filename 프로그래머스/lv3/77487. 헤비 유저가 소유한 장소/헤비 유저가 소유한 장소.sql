-- 코드를 입력하세요
SELECT ID, NAME, HOST_ID
FROM (
   SELECT *, COUNT(HOST_ID) OVER(partition by host_id) AS cnt
    FROM PLACES
) AS heavy_user
WHERE cnt>=2
ORDER BY ID



