use employees;
# test랑 내 employees랑 같은건가보다

create table t1 (
  i1 int not null primary key,
  v2 varchar(20)
)
  engine = innodb;

insert into t1 values (1, 'Firebird');

show create table t1;

select *
from t1;

# prompt Tranaction A
# 이건 안되서 내가 직접 mysql 에서 함