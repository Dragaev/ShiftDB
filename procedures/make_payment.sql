create or replace procedure shop.make_payment
(
new_id int,new_order_id int, new_product_id int, new_quantity int, new_quantity_type_id int,new_amount int,
 new_discount int,new_total_sum timestamp
)
as
$$
begin
    insert into shop.orders_items values
    (new_id,new_order_id,new_product_id,new_quantity,new_quantity_type_id,new_amount,new_discount,new_total_sum);
    UPDATE shop.shop_warehouses
SET quantity=quantity-new_quantity where product_id=
    (select orders_items.product_id from orders_items where orders_items.order_id=shop.orders.id);
    commit;
$$ language plpgsql;