create or replace procedure shop.update_warehouse_for_product
(
 new_warehouse_id int,product_id int
)
as
$$
begin
    UPDATE shop_warehouses
SET id= new_warehouse_id where product_id=product_id;
end;
$$ language plpgsql;