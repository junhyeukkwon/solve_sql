# -- 코드를 입력하세요
WITH ct AS (
    SELECT BOOK_ID, SUM(SALES) AS SALES
    FROM BOOK_SALES
    WHERE SALES_DATE BETWEEN '2022-01-01 00:00:00' AND '2022-01-31 23:59:59'
    GROUP BY BOOK_ID 
)

SELECT b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(s.SALES*b.PRICE) AS TOTAL_SALES
FROM BOOK b
    INNER JOIN AUTHOR a ON b.AUTHOR_ID = a.AUTHOR_ID
    INNER JOIN ct s ON b.BOOK_ID = s.BOOK_ID
GROUP BY b.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY
ORDER BY b.AUTHOR_ID, b.CATEGORY DESC
