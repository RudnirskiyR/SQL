select title, count(fa.actor_id)
from film f
inner join film_actor fa
on f.film_id = fa.film_id
group by title
having count(fa.actor_id) > 10

