create or replace procedure shop.get_discounts_from_period
(
from_date_find timestamp,to_date_find timestamp
)
as
$$
begin
    select * from discounts where from_date>=from_date_find and to_date<=to_date_find;
end;
$$ language plpgsql;