--INSERT INTO PRODUCERS (name, email, password) VALUES ('valera', 'valera@mail.ru', '2222');

-- id, name, size, weight
INSERT INTO PRODUCTS VALUES (1, 'краска белила цинковые', '5x10', '1');
INSERT INTO PRODUCTS VALUES (2, 'краска красная', '5x10', '1');
INSERT INTO PRODUCTS VALUES (3, 'кисть малярная', '30x5', '2');
INSERT INTO PRODUCTS VALUES (4, 'сгущенка', '3x4', '1');


-- id, fullname, phone, adress, country
INSERT INTO PRODUCERS VALUES (2, 'Погарская Анастасия ', '79099999999', 'ул. Малунцева 12', 'Польша');
INSERT INTO PRODUCERS VALUES (3, 'Кий Эдуард', '77777777777', 'ул. Магистральная 39Б', 'Украина');
INSERT INTO PRODUCERS VALUES (1, 'Мерц Анастасия сергеевна', '79013441222', 'ул. Магистральная 34Б', 'Россия');


--id, name, adress
INSERT INTO FACTORY VALUES(1, 'Склад 1', 'Буваль Бульварный 11')
INSERT INTO FACTORY VALUES(2, 'Склад 2', 'Проспект Жмилевского 8')
INSERT INTO FACTORY VALUES(3, 'Склад 3', 'Улица Паукова Анатолия 14')
INSERT INTO FACTORY VALUES(4, 'Склад 4', 'Дом Васи Уткина 154')


-- id, idproducer, idproduct, idfactory, amount, price, date
INSERT INTO SUPPLYS VALUES (1, 1, 1, 1, '200000', '50', '20030218');
INSERT INTO SUPPLYS VALUES (2, 2, 1, 3, '1200000', '5', '20060119');
INSERT INTO SUPPLYS VALUES (3, 3, 4, 2, '1000', '120', '20020618');


--id, fullname, country, adress, phone
INSERT INTO BUYER VALUES (1, 'Королев Сергей Павлович' , 'Россия', 'Ул. Академика королева 1, 11', '71111111111');
INSERT INTO BUYER VALUES (2, 'Лицеев Валерий Альбертович' , 'Россия', 'Ул. Академика королева 15, 111', '71111111111');

-- id, idbuyer, idsupply, amount, date
INSERT INTO ORDERS VALUES (1, 1, 1, 100, '20080101');
INSERT INTO ORDERS VALUES (2, 1, 2, 50, '2080101');
INSERT INTO ORDERS VALUES (3, 2, 1, 100, '20130101');
INSERT INTO ORDERS VALUES (4, 2, 2, 20, '20130102');
INSERT INTO ORDERS VALUES (5, 2, 3, 20, '20130202');