--#1
SELECT DISTINCT ORDERS.id_buyer as "Заказчики" from ORDERS where(
    ORDERS.id_supply = 1
)

--#2
SELECT ORDERS.amount_order*SUPPLYS.PRICE AS "Оборот" from ORDERS, SUPPLYS where(
  SUPPLYS.ID_SUPPLY = ORDERS.ID_SUPPLY
);

--#3
SELECT PRODUCTS.name, ORDERS.amount, SUPPLYS.amount from ORDERS, SUPPLYS where(
    SUPPLYS.amount - ORDERS.amount >= 10000
)

--#4
SELECT ORDERS.id_buyer, SUPPLYS.amount AS "остаток на начало месяца", BUYER.full_name_buyer from ORDERS, SUPPLYS  where(
    SUPPLYS.amount BETWEEN 56 AND 789
)

--#5


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