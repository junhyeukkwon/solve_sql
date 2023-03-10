-- 코드를 입력하세요
SELECT b.CATEGORY
    , SUM(SALES) AS TOTAL_SALES
FROM BOOK b
    INNER JOIN BOOK_SALES s ON b.BOOK_ID = s.BOOK_ID
WHERE sales_date BETWEEN '2022-01-01 00:00:00' AND '2022-01-31 23:59:59'
GROUP BY b.CATEGORY
ORDER BY b.CATEGORY