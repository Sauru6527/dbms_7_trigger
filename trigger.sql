-- 1: Create table --> Library         (no,name,detail)     ::: Insert records
-- 2: Create table --> Audi_lib        (no,name,detail)     ::: Don't Insert records 
-- Note: Both table column name must be same
-- 3: create Trigger.sql save it....
-- 4: source /home/sauru/trigger.sql
-- 5: delete one record from Library table 
-- 6: it will automatically get added in Audi_lib table
-- 7: DONE
 
delimiter //
create trigger libtrigger
before delete 
on library for each row
begin
insert into audi_library values (old.no,old.name,old.detail);
end
//
