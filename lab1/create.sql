-- TIMESTAMP: YYYYMMDD
create table PRODUCTS(
      id_product number(5) primary key
    , name_product varchar2(30) NOT NULL
    , size_product varchar2(15)
    , weight_product number(5)
    )

create table PRODUCERS(
      id_producer number(3) primary key
    , fullname_producer varchar2(60)
    , phone_number_producer number(15)
    , country_producer varchar(20)
    , adress_producer varchar(50)
    )

create table FACTORY(
      id_factory number(2) primary key
    , name_factory varchar(30) not null
    , adress_factory varchar(30) not null
  )

-- надо вставить в супплайз id_...
create table SUPPLYS(
      id_supply number(5) primary key
    , id_producer number(3) REFERENCES PRODUCERS(id_producer)
    , id_product number(5) REFERENCES PRODUCTS(id_product)
    , id_factory number(2)  REFERENCES FACTORY(id_factory)
    , amount_product number(6) not null
    , price number(5)
    , date_supplys TIMESTAMP(8)
    )

create table BUYER(
      id_buyer number(5) primary key
    , full_name_buyer varchar2(60)
    , country_buyer varchar2(40) not null
    , adress_buyer varchar2(40) not null
    , phone_number_buyer number(15)
    )

create table ORDERS(
      id_order number(5) primary key
    , id_buyer number(5) not null
    , FOREIGN KEY (id_buyer) REFERENCES BUYER(id_buyer)
    , id_supply number(5) not null
    , FOREIGN KEY (id_supply) REFERENCES SUPPLYS(id_supply)
    , amount_order number(5) not null
    , date_order TIMESTAMP(8)
    );
    