-- 코드를 입력하세요
SELECT A.APNT_NO, P.PT_NAME, P.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM PATIENT P, DOCTOR D, APPOINTMENT A
WHERE A.PT_NO = P.PT_NO AND A.MDDR_ID = D.DR_ID
AND A.APNT_CNCL_YN = 'N' AND TO_CHAR(A.APNT_YMD, 'YYYY-MM-DD') = '2022-04-13'
AND A.MCDP_CD = 'CS'
ORDER BY A.APNT_YMD
