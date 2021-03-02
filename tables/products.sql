CREATE TABLE products
(id SERIAL PRIMARY KEY,
 group_id integer,
 price money,
 quantity_type_id integer,
 name varchar(30),
 FOREIGN KEY (group_id) REFERENCES products_groups (id) on delete cascade,
FOREIGN KEY (quantity_type_id) REFERENCES quantity_types (id) on delete cascade
);