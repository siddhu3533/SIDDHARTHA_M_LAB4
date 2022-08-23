#7)	Display the Id and Name of the Product ordered after “2021-10-05”.

SELECT prod.PRO_ID, prod.PRO_NAME from `order` AS ord
INNER JOIN supplier_pricing AS sp
ON sp.PRICING_ID = ord.PRICING_ID
INNER JOIN product AS prod
ON prod.PRO_ID=sp.PRO_ID WHERE ord.ORD_DATE>'2021-10-05';
