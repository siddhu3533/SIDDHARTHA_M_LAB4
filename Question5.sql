#5)	Display the Supplier details who can supply more than one product.

SELECT sup.SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE FROM supplier AS sup
INNER JOIN
(SELECT * FROM supplier_pricing GROUP BY SUPP_ID HAVING COUNT(SUPP_ID)>1) AS sp
ON
sup.SUPP_ID=sp.SUPP_ID;