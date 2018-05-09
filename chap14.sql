use employees;
truncate table t1;

delimiter $
create procedure test_insert_commit(v_max int)
  begin
    declare v_id int default 0;
    repeat
      set v_id = v_id + 1;
      insert into t1 values (v_id, v_id);
      if (mod(v_id, 10000) = 0)
      then commit;
      end if;
    until v_id >= v_max
    end repeat;
  end$
delimiter ;

set autocommit=0;
call test_insert_commit(500000);
select count(*) from t1;


