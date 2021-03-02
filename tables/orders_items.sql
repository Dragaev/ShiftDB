CREATE TABLE orders_items
(id SERIAL PRIMARY KEY,
 order_id integer,
 product_id integer,
 quantity integer,
 quantity_type_id integer,
 amount money,
 discount integer,
 total_sum money,
 FOREIGN KEY (order_id) REFERENCES orders (id) on delete cascade,
 FOREIGN KEY (product_id) REFERENCES products (id) on delete cascade,
 FOREIGN KEY (quantity_type_id) REFERENCES quantity_types (id) on delete cascade
);