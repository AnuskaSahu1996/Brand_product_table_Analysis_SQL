# Brand_product_table_Analysis_SQL

Create database Brands
Create database Products

Use Brands

CREATE TABLE ITEMS_Table
 (Item_Id int primary key,
 item_description varchar(100),
 vendor_nos int,
 vendor_name varchar(100),
 bottle_size int,
 bottle_price float(10))

 INSERT INTO ITEMS_Table (Item_Id,item_description,vendor_nos,vendor_name,bottle_size,bottle_price)
 values
       (1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,9.77),
	   (2,'D''aristi Xtabentun',391,'Anchor Distilling (preiss Imports)',750,14.12),
	   (3,'Hiram Walker Peach Brandy',370,'Pernod Ricard Usa/austin Nichols',1000,6.50),
	   (4,'Oak Cross Whisky',305,'Mhw Ltd',750,25.33),
	   (5,'Uv Red(cherry) Vodka',380,'Phillips Beverage Company',200,1.97),
	   (6,'Heaven Hill Old Style White Label',259,'Heaven Hill Distilleries Inc.',750,6.37),
	   (7,'Hyde Herbal Liqueur',194,'Fire Tail Brands Llc',750,5.06),
	   (8,'Dupont Calvados Fine Reserve',403,'Robert Kacher Selections',750,23.61)

Select * from ITEMS_Table

 
 use Products

 CREATE TABLE PRODUCT_Table
 (Product_Id int primary key,
 Country varchar(30),
 Product varchar(50),
 [Unit Sold] decimal(20,1),
 "Manufacturing Price" decimal(10,2),
 [Sale Price] decimal(10,2),
 "Gross Sales" decimal(10,2),
 Sales decimal(10,2),
 COGS decimal(10,2),
 Profit decimal(10,2),
 "Date" date,
 "Month Number" int,
 "Month Name" varchar(30),
 "Year" int)


 INSERT INTO PRODUCT_Table (Product_Id,Country,Product,"Unit Sold","Manufacturing Price","Sale Price","Gross Sales",Sales,COGS,Profit,"Date","Month Number","Month Name","Year")
 values
(1,'Canada','Carretera',1618.5,3.00,20.00,32370.00,32370.00,16185.00,16185.00,'1/1/2014',1,'January' ,2014),
(2,'Germany','Carretera',1321,3.00,20.00,26420.00,26420.00,13210.00,13210.00 ,'1/1/2014',1,'January',2015),
(3,'France',' Carretera',2178,3.00,15.00,32670.00,32670.00,21780.00,10890.00 ,'6/1/2014',6,'June',2016),
(4,'Germany' ,'Carretera',888,3.00,15.00,13320.00,13320.00,8880.00,4440.00 ,'6/1/2014',6,'June',2017),
(5,'Mexico','Carretera',2470,3.00,15.00,37050.00,37050.00,24700.00,12350.00,'6/1/2014',6,'June',2018),
(6,'Germany',' Carretera',1513,3.00,350.00,529550.00,529550.00,393380.00,136170.00,'12/1/2014',12,'December',2019),
(7,'Germany','Montana',921,5.00,15.00,13815.00,13815.00,9210.00,4605.00,'3/1/2014',3,'March',2020),
(8,'Canada','Montana',2518,5.00,12.00,30216.00,30216.00,7554.00,22662.00,'6/1/2014',6,'June',2021)


Select * from PRODUCT_Table

DELETE FROM PRODUCT_Table
WHERE [Unit Sold] IN (1618.5,888,2470)

DROP TABLE ITEMS_Table

CREATE TABLE ITEMS_Table
 (Item_Id int primary key,
 item_description varchar(100),
 vendor_nos int,
 vendor_name varchar(100),
 bottle_size int,
 bottle_price float(10))

 INSERT INTO ITEMS_Table (Item_Id,item_description,vendor_nos,vendor_name,bottle_size,bottle_price)
 values
       (1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,9.77),
	   (2,'D''aristi Xtabentun',391,'Anchor Distilling (preiss Imports)',750,14.12),
	   (3,'Hiram Walker Peach Brandy',370,'Pernod Ricard Usa/austin Nichols',1000,6.50),
	   (4,'Oak Cross Whisky',305,'Mhw Ltd',750,25.33),
	   (5,'Uv Red(cherry) Vodka',380,'Phillips Beverage Company',200,1.97),
	   (6,'Heaven Hill Old Style White Label',259,'Heaven Hill Distilleries Inc.',750,6.37),
	   (7,'Hyde Herbal Liqueur',194,'Fire Tail Brands Llc',750,5.06),
	   (8,'Dupont Calvados Fine Reserve',403,'Robert Kacher Selections',750,23.61)


--Intermediate Questions
--Big Table :--
--1) Find the Total Sale Price  and  Gross Sales 
use Products
SELECT sum("Sale Price") AS "Total Sale Price", sum("Gross Sales") AS "Total Gross Price"
FROM PRODUCT_Table

--2) In which year we have got the highest sales

SELECT TOP 1 "year" 
FROM PRODUCT_Table 
ORDER BY "Sale Price" DESC

--3)  Which Product having the sales of $ 37,050.00
SELECT Product
FROM PRODUCT_Table
WHERE Sales = 37050.00

--4) Which Countries lies between profit of $ 4,605 to $  22 , 662.00
SELECT Country 
FROM PRODUCT_Table 
wHERE Profit BETWEEN 4605 AND 22662.00

--5) Which Product Id having the sales of $ 24 , 700.00
SELECT Product_Id 
FROM PRODUCT_Table
WHERE Sales = 24700.00

--Small Table :--

--1) Find the item_description having the bottle size of 750

USE Brands

SELECT item_description 
FROM ITEMS_Table
WHERE bottle_size = 750

--2) Find the vendor Name having the vendor_nos 305 , 380 , 391

SELECT vendor_name 
FROM ITEMS_Table
WHERE vendor_nos IN (305,380,391)

--3) What is total Bottle_price

SELECT SUM(bottle_price) as "Total Bottle Price"  FROM ITEMS_Table

--5) Which item id having the bottle_price of $ 5.06

SELECT Item_Id 
FROM ITEMS_Table 
WHERE bottle_price = 5.06

--Advance Questions:--
--1) Apply INNER  , FULL OUTER , LEFT JOIN types on both the table 

--INNER JOIN

SELECT Item.*,Product.*
FROM [Brands].[dbo].[ITEMS_Table] as Item
INNER JOIN
[Products].[dbo].[PRODUCT_Table] as Product
ON Item.Item_Id = Product.Product_Id

--FULL OUTER JOIN
SELECT Item.*,Product.*
FROM [Brands].[dbo].[ITEMS_Table]  as Item
full outer join
[Products].[dbo].[PRODUCT_Table] as Product
ON Item.Item_Id = Product.Product_Id

--LEFT JOIN

SELECT Item.*,Product.*
FROM [Brands].[dbo].[ITEMS_Table]  as Item
LEFT join
[Products].[dbo].[PRODUCT_Table] as Product
ON Item.Item_Id = Product.Product_Id

SELECT Product.*,Item.*
FROM [Products].[dbo].[PRODUCT_Table] as Product
LEFT join
[Brands].[dbo].[ITEMS_Table]  as Item
ON Product.Product_Id = Item.Item_Id

--2) Apply  OUTER  ,  RIGHT JOIN , CROSS JOIN types  on both the table 

--Right JOIN

SELECT Product.*,Item.*
FROM [Products].[dbo].[PRODUCT_Table] as Product
Right join
[Brands].[dbo].[ITEMS_Table]  as Item
ON Product.Product_Id = Item.Item_Id

SELECT Item.*,Product.*
FROM [Brands].[dbo].[ITEMS_Table]  as Item
Cross Join
[Products].[dbo].[PRODUCT_Table] as Product

--3) Find the item_description and Product having the gross sales of 13,320.00

SELECT item_description, Product
FROM [Products].[dbo].[PRODUCT_Table] as Product
Inner join
[Brands].[dbo].[ITEMS_Table]  as Item
ON Product.Product_Id = Item.Item_Id
WHERE [Gross Sales] = 13320.00

--4)Combine the  bottle_price and profit Column and show total value of both the columns in a new temporary columns

SELECT (bottle_price + Profit) as Total_Value
FROM [Products].[dbo].[PRODUCT_Table] as Product
Inner join
[Brands].[dbo].[ITEMS_Table]  as Item
ON Product.Product_Id = Item.Item_Id

--5)   Split the Item_description Column into Columns Item_desc1 and Item_desc2

SELECT item_description, 
charindex(' ', item_description) as [space position],
len(item_description) as [name length],
left(item_description, (charindex(' ', item_description)-1)) as [item desc1],
substring(item_description,(charindex(' ',item_description)+1),(len(item_description) -charindex(' ',item_description)))
as [item desc2] from [dbo].[ITEMS_Table]
