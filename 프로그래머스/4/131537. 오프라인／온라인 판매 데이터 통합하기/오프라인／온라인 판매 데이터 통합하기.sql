-- 코드를 입력하세요
SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM (SELECT TO_CHAR(A.SALES_DATE, 'YYYY-MM-DD') AS SALES_DATE, A.PRODUCT_ID, A.USER_ID, A.SALES_AMOUNT
FROM ONLINE_SALE A
WHERE TO_CHAR(A.SALES_DATE, 'YYYY-MM') = '2022-03'
UNION
SELECT TO_CHAR(B.SALES_DATE, 'YYYY-MM-DD') AS SALES_DATE, B.PRODUCT_ID, NULL, B.SALES_AMOUNT
FROM OFFLINE_SALE B
WHERE TO_CHAR(B.SALES_DATE, 'YYYY-MM') = '2022-03' 
)
ORDER BY 1, 2, 3