# Customer Name and Gender whose Name starts or ends with A.
SELECT c.CUS_NAME,c.CUS_GENDER FROM customer AS c WHERE (c.CUS_NAME LIKE 'A%' OR c.CUS_NAME LIKE '%A');