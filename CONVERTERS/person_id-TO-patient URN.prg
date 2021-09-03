SELECT
	P.PERSON_ID
	, PA.PERSON_ALIAS_ID
	, PA_ALIAS_POOL_DISP = UAR_GET_CODE_DISPLAY(PA.ALIAS_POOL_CD)

FROM
	PERSON   P
	, (LEFT JOIN PERSON_ALIAS PA ON (P.PERSON_ID = PA.PERSON_ID))

PLAN P
JOIN PA
WHERE 
	P.PERSON_ID = CHANGE_ME_TO_ID ; change this
	AND
   PA.ALIAS_POOL_CD = 9569589.00

WITH MAXREC = 10, NOCOUNTER, SEPARATOR=" ", FORMAT
