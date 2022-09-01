https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_case
Select price,
(CASE 
    WHEN price < 30 THEN'저렴'
    WHEN price > 60 THEN'비쌈'
    ELSE '적당' end) as pl

 from Products
 WHERE CategoryID IN(3,6)
 ORDER BY SupplierID;