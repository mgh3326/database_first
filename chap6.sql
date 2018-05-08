#chap 6
show databases;

use world;

show tables;

select *
from city;

select *
from city
where countrycode = 'KOR';

select *
from city
where district = "chollanam";

select
  Name,
  Population
from city
where district = 'chollanam';

select
  Name,
  Population
from city
where district = 'Chollanam' and population > 150000;

select distinct district
from city
where countrycode = 'KOR';

# 중복행 제거 distinct

select
  Name,
  Population
From city
Where district = 'chollanam' AND population > 150000;

select distinct district
from city
where countrycode = 'KOR';


