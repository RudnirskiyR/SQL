create table population (
id SERIAL primary key,
language varchar (20) not null,
nationality varchar (40) not null,
country varchar (20) not null
)

insert into population (language, nationality, country )
values 
('Английский','Англосаксы','Америка'),
('Английский','Англосаксы','Великобритания'),
('Испанский','Монголоиды','Америка'),
('Немецкий','Англосаксы','Германия'),
('Русский','Славяне','Россия'),
('Русский','Славяне','Украина'),
('Китайский','Азиаты','Китай'),
('Корейский','Азиаты','Северная Корея'),
('Корейский','Азиаты','Южная Корея'),
('Японский','Азиаты','Япония'),
('Английский','Англосаксы','Австралия'),
('Испанский','Англосаксы','Австралия'),
('Немецкий','Англосаксы','Австрия');

select * 
from population





