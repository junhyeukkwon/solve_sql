-- 코드를 입력하세요
SELECT ao.ANIMAL_ID
      ,ao.NAME
FROM ANIMAL_OUTS AS ao
    LEFT JOIN ANIMAL_INS AS ai ON ao.ANIMAL_ID = ai.ANIMAL_ID
WHERE ao.NAME IS NOT NULL
AND ai.ANIMAL_ID IS NULL