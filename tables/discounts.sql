CREATE TABLE discounts
(id SERIAL PRIMARY KEY,
 type_id integer,
 product_id integer,
 group_id integer,
 from timestamp,
 to timestamp,
 percent integer,
 fixed_sum money,
 FOREIGN KEY (product_id) REFERENCES products (id) on delete cascade,
FOREIGN KEY (type_id) REFERENCES discount_types (id) on delete cascade
);