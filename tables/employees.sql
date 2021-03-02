CREATE TABLE employees
(id SERIAL PRIMARY KEY,
 f varchar(15),
 i varchar(15),
 o varchar(15),
 position varchar(20),
 manager_id integer,
 shop_id integer,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade
);