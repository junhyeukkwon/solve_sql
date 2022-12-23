-- 코드를 입력하세요
-- 이름(info), 리뷰텍스트, 이뷰 작성일(review) 
-- 작성일, 텍스트 오름
SELECT m.MEMBER_NAME
      ,r.REVIEW_TEXT
      ,DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE m
    INNER JOIN REST_REVIEW r ON m.MEMBER_ID = r.MEMBER_ID
WHERE m.MEMBER_ID = (
    SELECT MEMBER_ID
    FROM (
        SELECT MEMBER_ID, COUNT(*) AS cnt
        FROM REST_REVIEW
        GROUP BY MEMBER_ID
        ORDER BY cnt DESC
        LIMIT 1
    ) AS ct
)
ORDER BY REVIEW_DATE, r.REVIEW_TEXT
