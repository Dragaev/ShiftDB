create or replace procedure shop.get_product_and_quantity_from_warehouse_of_shop
(
shop_id_find int
)
as
$$
begin
    select name,quantity from shop_warehouses join products p on p.id = shop_warehouses.product_id where shop_id=shop_id_find;
end;
$$ language plpgsql;
