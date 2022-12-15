select * from students;
select last_name,first_name from students;
select last_name,first_name from students where id=2;
select last_name,first_name from students where last_name='Marc' and first_name='Benichou';
select last_name,first_name from students where last_name='Marc' or first_name='Benichou';
select last_name,first_name from students where last_name ilike '%a%';
select last_name,first_name from students where last_name ilike '%a';
select last_name,first_name from students where last_name ilike 'a%';
select last_name,first_name from students where id=1 and id=3;

select * from students where birth_date>='1/01/2000';