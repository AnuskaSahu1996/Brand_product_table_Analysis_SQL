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