/*Выведите у каждого покупателя город в котором он живет*/

select first_name, last_name, city
from customer c
inner join address a
on a.address_id = c.address_id
inner join city ci
on ci.city_id = a.city_id
order by first_name asc /*, last_name asc*/
