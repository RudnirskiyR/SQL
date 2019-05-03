/*1. Получите обобщенную информацию по поставкам в виде таблицы:
Имя поставщика, Название Изделия, Название Детали, Количество*/

select s.name, j.name,p.name,num
from supply
inner join public.products p 
on p.id = pid 
inner join public.job j 
on j.id = jid 
inner join public.shipper s 
on s.id = sid 

/*2. Организуйте возможность постраничного обращения, так, чтобы на каждой странице было не более 3 строк из таблицы п.1
 и выведите информацию со страницы номер 2.*/
