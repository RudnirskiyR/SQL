
/*Выведите магазины, имеющие больше 300-от покупателей*/

select distinct on (store_id) address, r_num , f.store_id
from customer f
inner join (select store_id, count(customer_id) over (partition by store_id) as r_num from customer ) as a
on f.store_id = a.store_id
inner join address z
on f.address_id = z.address_id
where r_num > 300