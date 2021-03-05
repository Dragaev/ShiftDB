create or replace procedure shop.get_shops_from_shops
(

)
as
$$
begin
    select * from shops;
end;
$$ language plpgsql;
