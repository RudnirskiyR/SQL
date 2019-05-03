select first_name, last_name,title, count(title) over (partition by first_name, last_name) as num
from actor a
inner join film_actor f
on a.actor_id = f.actor_id
inner join film ff 
on ff.film_id = f.film_id
order by num desc