--#1
SELECT DISTINCT o.id_buyer, b.full_name_buyer as "Заказчики" from ORDERS o JOIN BUYER b on(o.id_buyer=b.id_buyer) where (
  o.id_supply = 1
);

--#2
SELECT ORDERS.amount_order*SUPPLYS.PRICE AS "Сумма по 3 поялм" from ORDERS, SUPPLYS where(
  SUPPLYS.ID_SUPPLY = ORDERS.ID_SUPPLY
);

--###
SELECT SUM((ORDERS.amount_order*SUPPLYS.PRICE) + (SUPPLYS.amount_product*SUPPLYS.price - ORDERS.amount_order*SUPPLYS.price) + (SUPPLYS.amount_product*SUPPLYS.price)) AS "Сумма по 3 полям" from ORDERS, SUPPLYS where(
  SUPPLYS.ID_SUPPLY = ORDERS.ID_SUPPLY
);

--#3
SELECT distinct p.NAME_PRODUCT, SUPPLYS.amount_product from ORDERS, SUPPLYS join PRODUCTS p on(p.id_product = SUPPLYS.id_product) where(
    SUPPLYS.amount_product - ORDERS.amount_order <= 10000
)

--#4
SELECT distinct b.full_name_buyer, s.id_product, s.amount_product AS "остаток месяца" from ORDERS, SUPPLYS s, BUYER b where(
    s.amount_product BETWEEN 56 AND 789
)

--#5
SELECT  b.full_name_buyer o.id_product FROM ORDERS o, SUPPLYS s JOIN BUYER b on(b.id_buyer = o.id_buyer) WHERE(
  min(o.amount_order*s.price)
)

--#6
UPDATE PRODUCTS SET id_factory = 4 WHERE id_factory = 1


/*
select Customs.id_producta, Customs.custom_date As "Дата заказа", Product.product_name As "Название" from Product, Customs where (
    custom_date>=SYSDATE - 2
    ) 
AND Customs.id_producta = Product.id_producta;

delete from Customers
where exists
(select Customs.done_or_not
  from Customs
  where Customs.id_zakazchika = Customers.id_zakazchika
  and done_or_not = 'yes');

select ROUND(AVG(Price), 2) As "Средняя стоимость" 
from Product;


select Product.product_name As "Название товара" from Product where indications like '%тахикардия%';

select Customers.fio As "ФИО", Customers.birth_date As "Дата рождения", Product.product_name As "Название товара", Product.price As "Цена" ,price*2 from Customers, Product, Customs 
where Customs.ID_ZAKAZCHIKA = Customers.ID_ZAKAZCHIKA and Customs.ID_PRODUCTA = Product.ID_PRODUCTA and price = (select MAX(price) from PRODUCT) and
 (to_number(to_char(birth_date,'YYYY')) < 1965);
*/