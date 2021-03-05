create or replace procedure shop.update_shop_for_employee
(
 new_shop_id int,employee_id int
)
as
$$
begin
    UPDATE employees
SET shop_id= new_shop_id where employee_id=employee_id;
end;
$$ language plpgsql;