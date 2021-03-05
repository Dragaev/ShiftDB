create or replace procedure shop.insert_employee_to_employees
(
 id int,f varchar(15), i varchar(15), o varchar(15), pos varchar(20), manager_id int, shop_id int
)
as
$$
begin
    INSERT INTO shop.employees VALUES (id, f, i, o, pos,manager_id, shop_id);
end;
$$ language plpgsql;