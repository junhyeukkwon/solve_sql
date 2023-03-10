-- 코드를 입력하세요
# SELECT DATE_FORMAT(o.SALES_DATE,'%Y-%m-%d') AS SALES_DATE , o.PRODUCT_ID, o.USER_ID, o.SALES_AMOUNT
# FROM ONLINE_SALE
# WHERE o.SALES_DATE BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
# ORDER BY SALES_DATE, o.PRODUCT_ID, o.USER_ID

SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
UNION
SELECT DATE_FORMAT(SALES_DATE,'%Y-%m-%d') SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE BETWEEN '2022-03-01 00:00:00' AND '2022-03-31 23:59:59'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID