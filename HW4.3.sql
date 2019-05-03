create table language (
id character varying primary key,
language varchar (20) not null);

create table national(
id character varying primary key,
nationaly varchar (20) not null);

create table country (
id character varying primary key,
country varchar (20) not null);

create table country_Nt (
nid character varying,
cid character varying );

create table language_Nt (
lid character varying,
nid character varying);

insert into language (id, language)
values
('L1','Английский'),
('L2','Испанский'),
('L3','Немецкий'),
('L4','Русский'),
('L5','Китайский'),
('L6','Корейский'),
('L7','Японский');

insert into national (id, nationaly)
values
('N1','Англосаксы'),
('N2','Монголоиды'),
('N3','Славяне'),
('N4','Азиаты');

insert into country (id, country )
values 
('C1','Америка'),
('C2','Великобритания'),
('C3','Германия'),
('C4','Россия'),
('C5','Украина'),
('C11','Китай'),
('C6','Cеверная Корея'),
('C7','Южная Корея'),
('C8','Япония'),
('C9','Австралия'),
('C10','Австрия');

insert into language_Nt (lid, nid)
values 
('L1','N1'),
('L2','N2'),
('L4','N3'),
('L5','N4'),
('L6','N4'),
('L7','N4'),
('L2','N1'),
('L3','N1');

insert into country_Nt (nid, cid)
values
('N1','C1'),
('N1','C2'),
('N2','C1'),
('N1','C3'),
('N3','C2'),
('N3','C5'),
('N4','C11'),
('N4','C6'),
('N4','C7'),
('N4','C8'),
('N1','C9'),
('N1','C10');

alter table country_Nt
add primary key (cid , nid),
add foreign key (nid) references national (id) on delete cascade,
add foreign key (cid) references country (id) on delete cascade;

alter table language_Nt
add primary key (lid,nid),
add foreign key (lid) references language (id) on delete cascade,
add foreign key (nid) references national (id) on delete cascade

select language, nationaly, country
from language l
inner join language_nt
on l.id = lid
inner join national n
on n.id = nid
inner join country_nt nt
on nt.nid = n.id
inner join country c 
on c.id = cid













