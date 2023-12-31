-- 코드를 입력하세요
SELECT '/home/grep/src/' || UGF.BOARD_ID || '/' || UGF.FILE_ID || FILE_NAME || FILE_EXT AS "FILE_PATH"
FROM USED_GOODS_BOARD UGB JOIN USED_GOODS_FILE UGF 
ON UGB.BOARD_ID = UGF.BOARD_ID
WHERE VIEWS IN (SELECT MAX(VIEWS)
FROM USED_GOODS_BOARD UGB)
ORDER BY FILE_ID DESC
