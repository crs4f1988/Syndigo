SELECT p.brand_name, COUNT(p.pubstatus)
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.pubstatus = 'Synchronized'
GROUP BY p.brand_name
ORDER BY COUNT(p.pubstatus);

SELECT p.brand_name, COUNT(p.pubstatus)
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.pubstatus = 'Synchronized'
GROUP BY p.brand_name
ORDER BY COUNT(p.pubstatus) desc
LIMIT 3;

SELECT COUNT(p.product_type), p.product_type
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
GROUP BY p.product_type
ORDER BY COUNT(p.product_type);
