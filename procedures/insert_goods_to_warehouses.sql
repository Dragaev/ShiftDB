create or replace procedure shop.insert_goods_to_warehouses
(
 id int,shop_id int, product_id int, quantity int
)
as
$$
begin
    INSERT INTO shop.shop_warehouses VALUES (id,shop_id,product_id,quantity);
end;
$$ language plpgsql;