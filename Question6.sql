#6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product

SELECT category.CAT_ID, category.CAT_NAME,t3.PRO_NAME,MIN(t3.MIN_PRICE) AS MIN_PRICE FROM category
INNER JOIN
	(
		SELECT product.CAT_ID,product.PRO_NAME,t2.* FROM product
		INNER JOIN( SELECT PRO_ID,MIN(SUPP_PRICE) AS MIN_PRICE from supplier_pricing GROUP BY PRO_ID)
			AS t2 where t2.PRO_ID=product.PRO_ID
	) AS t3 WHERE t3.CAT_ID = category.CAT_ID
GROUP BY CAT_ID