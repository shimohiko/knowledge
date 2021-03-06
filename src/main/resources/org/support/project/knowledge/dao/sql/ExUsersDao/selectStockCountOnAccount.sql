SELECT
        COUNT(STOCK_KNOWLEDGES.STOCK_ID) AS STOCK_COUNT
    FROM
        USERS
        INNER JOIN KNOWLEDGES ON (KNOWLEDGES.INSERT_USER = USERS.USER_ID AND KNOWLEDGES.DELETE_FLAG = 0)
        INNER JOIN STOCK_KNOWLEDGES ON (STOCK_KNOWLEDGES.KNOWLEDGE_ID = KNOWLEDGES.KNOWLEDGE_ID AND STOCK_KNOWLEDGES.DELETE_FLAG = 0)
    WHERE
        USERS.USER_ID = ?
        AND USERS.DELETE_FLAG = 0
