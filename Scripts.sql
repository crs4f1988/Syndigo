select *
from gcfoods;
select *
from pfg;
select COUNT(gtin)
from gcfoods;
select COUNT(GTIN)
from pfg;
select COUNT(*)
from pfg;
select COUNT(DISTINCT(pfg.Brand_Name))
from pfg;
select COUNT(Brand_Name)
from pfg;
select Brand_Name
from pfg;
select * 
from pfg;
select publicationid
from renzi;
select renzi.PublicationID
from renzi;
select PublicationID
from syndigo.renzi;
select publicationid
from gcfoods;
select party_name
from gcfoods;
select COUNT(DISTINCT(brand_name))
from gcfoods;
select DISTINCT brand_name
from gcfoods;
select DISTINCT(COUNT(brand_name))
from gcfoods;
select DISTINCT(COUNT(brand_name))
from renzi;
select DISTINCT(COUNT(brand_name))
from pfg;
select DISTINCT(COUNT(brand_name), gtin, info_provider_gln)
from pfg
group by gtin, info_provider_gln;
select COUNT(*)
from pfg;
select COUNT(info_provider_gln)
from pfg;
select pubstatus
from pfg;
select gtin
from pfg
WHERE pubstatus LIKE 'ValidationFailed';
select *
from pfg;
select COUNT(DISTINCT gtin)
from pfg
WHERE pubstatus LIKE 'ValidationFailed';
select p.gtin, p.brand_name, p.info_provider_gln
from pfg AS p
LEFT JOIN renzi as r
ON p.gtin;
SELECT	* FROM pfg
INNER JOIN renzi USING (gtin);
SELECT	* FROM pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin);
SELECT COUNT(DISTINCT gtin)
FROM  pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)



WITH CTE AS (SELECT	* FROM pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin))
SELECT COUNT(DISTINCT brand_name)
FROM CTE;

WITH CTE AS (SELECT	* FROM pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin))
SELECT *
FROM CTE;

WITH CTE AS (SELECT	* FROM pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin))
SELECT *
FROM CTE;

SELECT	* FROM pfg
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin);

SELECT p.brand_name
FROM pfg AS p
INNER JOIN renzi USING (gtin);

SELECT DISTINCT(p.brand_name)
FROM pfg AS p
INNER JOIN renzi USING (gtin);

SELECT COUNT(p.pubstatus)
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.pubstatus = 'ValidationFailed';

SELECT p.action_details
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.pubstatus = 'ValidationFailed';

SELECT COUNT(p.action_details)
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.pubstatus = 'ValidationFailed';

SELECT p.action_details
FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin)
WHERE p.action_details LIKE '%Allergen%';

SELECT p.action_details 
 FROM pfg AS p
INNER JOIN renzi USING (gtin)
INNER JOIN gcfoods USING (gtin) 
 WHERE p.action_details LIKE '%Nutrition%'
 GROUP BY p.action_details
 ORDER BY COUNT(p.action_details) desc 
 LIMIT 50;
 
 