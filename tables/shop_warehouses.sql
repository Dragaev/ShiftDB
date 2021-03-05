CREATE TABLE shop.shop_warehouses
(id SERIAL PRIMARY KEY,
 shop_id integer,
 product_id integer,
 quantity integer,
 FOREIGN KEY (product_id) REFERENCES shop.products (id) on delete cascade,
FOREIGN KEY (shop_id) REFERENCES shop.shops (id) on delete cascade
);