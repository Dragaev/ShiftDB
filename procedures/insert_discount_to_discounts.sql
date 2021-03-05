create or replace procedure shop.insert_discount_to_discounts
(
 id integer, type_id int, product_id int, group_id int, from_date timestamp, to_date timestamp, percent integer, fixed_sum int
)
as
$$
begin
    INSERT INTO shop.products VALUES (id, type_id, product_id, group_id, from_date, to_date, percent, fixed_sum);
end;
$$ language plpgsql;
