create procedure insert_goods_to_products(id integer, group_id integer, price money, quantity_type_id integer, name character varying)
    language plpgsql
as
$$
begin
    INSERT INTO shop.products VALUES (id,group_id,price,quantity_type_id,name);
end;
$$;

alter procedure insert_goods_to_products(integer, integer, money, integer, varchar) owner to postgres;

