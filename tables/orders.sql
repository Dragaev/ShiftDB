CREATE TABLE orders
(id SERIAL PRIMARY KEY,
 shop_id integer,
 employee_id integer,
 total_amount money,
 date timestamp,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade,
 FOREIGN KEY (employee_id) REFERENCES employees (id) on delete cascade
);