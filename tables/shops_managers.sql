CREATE TABLE shops_managers
(id SERIAL PRIMARY KEY,
 shop_id integer,
 manager_id integer,
 FOREIGN KEY (manager_id) REFERENCES employees (id) on delete cascade,
 FOREIGN KEY (shop_id) REFERENCES shops (id) on delete cascade
);