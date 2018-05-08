#chap 8

use world;

select *
from city
where countrycode = 'KOR' and district = 'Kyonggi';

update city
set name = 'Siheung'
where countrycode = 'KOR' and district = 'Kyonggi' and name = 'Shihung';

select *
from city
where countrycode = 'KOR' and district = 'Kyonggi';

insert into city values (DEFAULT, 'Gimpo', 'KOR', 'Kyonggi', 359584);

select *
from city
where countrycode = 'KOR' and district = 'Kyonggi';

delete from city
where id = 4080;

select *
from city
where countrycode = 'KOR' and district = 'Kyonggi';

update city
set name = 'Siheung', population = 429390
where countrycode = 'KOR' and district = 'Kyonggi' and name = 'Shihung';

show create table city;

desc city;

insert into city values (DEFAULT, 'Gimpo', 'KOR', 'Kyonggi', 349900);

insert into city (name, countrycode, district, population) values ('Gimpo', 'KOR', 'Kyonggi', 349900);

insert into city (Countrycode) values ('KOR');

select *
from city
order by id desc
limit 3;

create table citycopy
  like city;

insert into citycopy select *
                     from city;

insert into city (name, countrycode, district, population) values ('Gimpo', 'KOR', 'Kyonggi', 359584);

insert into city (name, countrycode, district, population) values ('Pocheon', 'KOR', 'Kyonggi', 155192);

insert into city (name, countrycode, district, population) values ('Hwaseong', 'KOR', 'Kyonggi', 613091);

insert into city (name, countrycode, district, population)
values ('Gimpo', 'KOR', 'Kyonggi', 359584), ('Pocheon', 'KOR', 'Kyonggi', 155192),
  ('Hwaseong', 'KOR', 'Kyonggi', 613091);

