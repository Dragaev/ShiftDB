create procedure get_products_from_products()
    language plpgsql
as
$$
begin
    select * from products;
end;
$$;

alter procedure get_products_from_products() owner to postgres;

