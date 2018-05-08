#chap 7
use world;

select *
from city
where countrycode = 'KOR'
order by population;

select count(*)
from city
where countrycode = 'KOR';

select
  min(population),
  max(population),
  sum(population),
  avg(population)
from city
where countrycode = 'KOR';

select name
from city
where countrycode = 'KOR' and district = 'Chollabuk';

select group_concat(name)
from city
where countrycode = 'KOR' and district = 'Chollabuk';

select
  district,
  count(*)
from city
where countrycode = 'KOR'
group by district;

select
  district,
  count(*)
from city
where countrycode = 'KOR'
group by district
having count(*) = 6;

select *
from city
where countrycode = 'KOR'
order by population desc;

select *
from city
where countrycode = 'KOR'
order by district;

select *
from city
where countrycode = 'KOR'
order by district, name;

select max(name)
from city
where countrycode = 'KOR';

select min(name)
from city
where countrycode = 'KOR';

select group_concat(district)
from city
where countrycode = 'KOR';

select group_concat(distinct district)
from city
where countrycode = 'KOR';

select count(*)
from city
where countrycode = 'KOR';

select distinct count(*)
from city
where countrycode = 'KOR'
group by district;

# select
#   district,
#   count(*)
# from city
# where countrycode = 'KOR' and count(*) = 4
# group by district;

# 위에 에러 뜨는게 당연하다고 함

select
  district,
  count(*)
from city
where countrycode = 'KOR'
group by district
having count(*) = 6;

select
  district,
  count(*)
from city
where countrycode = 'KOR'
group by district
having count(*) > 6 order by count(*) desc;


