CREATE TABLE shop.discounts
(id SERIAL PRIMARY KEY,
 type_id integer,
 product_id integer,
 group_id integer,
 from_date timestamp,
 to_date timestamp,
 percent integer,
 fixed_sum money,
 FOREIGN KEY (product_id) REFERENCES shop.products (id) on delete cascade,
FOREIGN KEY (type_id) REFERENCES shop.discount_types (id) on delete cascade
);