CREATE TABLE shop.orders
(id SERIAL PRIMARY KEY,
 shop_id integer,
 employee_id integer,
 total_amount money,
 date timestamp,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade,
 FOREIGN KEY (employee_id) REFERENCES employees (id) on delete cascade
);
CREATE TABLE shop.orders_items
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
CREATE TABLE shop.products
(id SERIAL PRIMARY KEY,
 group_id integer,
 price money,
 quantity_type_id integer,
 name varchar(30),
 FOREIGN KEY (group_id) REFERENCES products_groups (id) on delete cascade,
FOREIGN KEY (quantity_type_id) REFERENCES quantity_types (id) on delete cascade
);
CREATE TABLE shop.products_groups
(id SERIAL PRIMARY KEY,
 group_name varchar(20),
 parent_group_id integer
);
CREATE TABLE shop.quantity_types
(id SERIAL PRIMARY KEY,
 type varchar(20)
);
CREATE TABLE shop.discounts
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
CREATE TABLE shop.discount_types
(id SERIAL PRIMARY KEY,
 type varchar(20)
);
CREATE TABLE shop.employees
(id SERIAL PRIMARY KEY,
 f varchar(15),
 i varchar(15),
 o varchar(15),
 position varchar(20),
 manager_id integer,
 shop_id integer,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade
);

CREATE TABLE shop.shops_managers
(id SERIAL PRIMARY KEY,
 shop_id integer,
 manager_id integer,
 FOREIGN KEY (manager_id) REFERENCES employees (id) on delete cascade,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade
);

