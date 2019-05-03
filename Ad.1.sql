/*Для каждой поставляемой для некоторого изделия детали выдать ее номер, номер изделия и соответствующее общее количество деталей.
Получить номера деталей, поставляемых для всех изделий из Лондона.*/

select jid, pid, city, sum(num)
from public.supply
inner join shipper
on sid = id
group by jid, pid, city
having city = 'Лондон'



/*Выдать номера и фамилии поставщиков, поставляющих деталь Р1 для какого-либо изделия в количестве,
 большем среднего объема поставок детали Р1 для этого изделия.*/

select id, name, num, AVG(num)
from public.shipper
inner join supply
on sid = id
where pid = 'P1'
group by id, name,num






