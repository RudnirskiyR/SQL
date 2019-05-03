select *
from public.supply
order by sid

select pid, sid , count (jid), avg(num), max(num)
from public.supply
group by pid, sid
having avg(num) = ((max(num) + min(num))/2)




