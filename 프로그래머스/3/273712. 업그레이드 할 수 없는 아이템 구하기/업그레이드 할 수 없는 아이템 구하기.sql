-- 코드를 작성해주세요
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID NOT IN (
    SELECT PARENT_ITEM_ID 
    FROM ITEM_TREE 
    WHERE NOT ISNULL(PARENT_ITEM_ID)
)
ORDER BY ITEM_ID DESC;