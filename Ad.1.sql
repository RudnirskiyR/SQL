/*��� ������ ������������ ��� ���������� ������� ������ ������ �� �����, ����� ������� � ��������������� ����� ���������� �������.
�������� ������ �������, ������������ ��� ���� ������� �� �������.*/

select jid, pid, city, sum(num)
from public.supply
inner join shipper
on sid = id
group by jid, pid, city
having city = '������'



/*������ ������ � ������� �����������, ������������ ������ �1 ��� ������-���� ������� � ����������,
 ������� �������� ������ �������� ������ �1 ��� ����� �������.*/

select id, name, num, AVG(num)
from public.shipper
inner join supply
on sid = id
where pid = 'P1'
group by id, name,num






