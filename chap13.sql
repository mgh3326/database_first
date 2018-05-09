use employees;

create table Nullkey
(
  Primary_Key INTEGER primary key
);

insert into Nullkey values (1);
insert into Nullkey values (2);

select *
from Nullkey;

# insert into Nullkey values (NULL);
# # 이건 에러