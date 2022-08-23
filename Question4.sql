#4)	Display all the orders along with product name ordered by a customer having Customer_Id=2

SELECT t1.ORD_ID,t1.ORD_AMOUNT,t1.ORD_DATE,t1.CUS_ID,t1.PRICING_ID,product.PRO_NAME FROM
(
	SELECT `order`.*, supplier_pricing.PRO_ID FROM `order`
	INNER JOIN supplier_pricing ON `order`.PRICING_ID=supplier_pricing.PRICING_ID AND `order`.CUS_ID=2
) AS t1 INNER JOIN product ON t1.PRO_ID=product.PRO_ID

