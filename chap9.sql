#chap 9;
use world;

create view citykyonggi as
  select
    id,
    name,
    population
  from city
  where countrycode = 'KOR' and district = 'Kyonggi';

select *
from citykyonggi;

create view citykorea as
  select
    id,
    name,
    district,
    population
  from city
  where countrycode = 'KOR';

create view largecity as
  select *
  from city
  where population > 7000000 with check option;

select *
from largecity;

#step 2-1
create view citykorea as
  select
    id,
    name,
    district,
    population
  from city
  where countrycode = 'KOR';

select count(*)
from citykorea
where population > (select avg(population)
                    from citykorea);
select *
from countrylanguage
where countrycode = 'KOR';

select *
from countrylanguage
where language = 'Korean';

select
  countrylanguage.*,
  country.name
from countrylanguage
  inner join country on countrylanguage.countrycode = country.code
where language = 'Korean';

insert into countrylanguage (CountryCode, language) values ('abw', 'Esperanto');

select
  countrylanguage.*,
  country.name
from countrylanguage
  inner join country on countrylanguage.countrycode = country.code
where language = 'Esperanto';
# 책에서는 안된다는데 나는 왜 되지

select
  countrylanguage.*,
  country.name
from countrylanguage
  left outer join country on countrylanguage.countrycode = country.code
where language = 'Esperanto';

