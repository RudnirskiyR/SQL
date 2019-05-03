create table language (
id SERIAL primary key,
language varchar (20) not null);

create table national(
id SERIAL primary key,
nationaly varchar (20) not null);

create table country (
id SERIAL primary key,
country varchar (20) not null);

insert into language (language)
values
('Английский'),
('Испанский'),
('Немецкий'),
('Русский'),
('Китайский'),
('Корейский'),
('Японский');

insert into national (nationaly)
values
('Англосаксы'),
('Монголоиды'),
('Славяне'),
('Азиаты');

insert into country (country )
values 
('Америка'),
('Великобритания'),
('Германия'),
('Россия'),
('Украина'),
('Китай'),
('Северная Корея'),
('Южная Корея'),
('Япония'),
('Австралия'),
('Австрия');

create table language_Nt (
id SERIAL primary key,
language varchar (20) not null,
nationaly varchar (20) not null);

insert into language_Nt (language, nationaly)
values 
('Английский','Англосаксы'),
('Английский','Англосаксы'),
('Испанский','Монголоиды'),
('Немецкий','Англосаксы'),
('Русский','Славяне'),
('Русский','Славяне'),
('Китайский','Азиаты'),
('Корейский','Азиаты'),
('Корейский','Азиаты'),
('Японский','Азиаты'),
('Английский','Англосаксы'),
('Испанский','Англосаксы'),
('Немецкий','Англосаксы');

create table country_Nt (
id SERIAL primary key,
country varchar (20) not null,
nationaly varchar (20) not null);

insert into country_Nt (nationaly, country)
values
('Англосаксы','Америка'),
('Англосаксы','Великобритания'),
('Монголоиды','Америка'),
('Англосаксы','Германия'),
('Славяне','Россия'),
('Славяне','Украина'),
('Азиаты','Китай'),
('Азиаты','Северная Корея'),
('Азиаты','Южная Корея'),
('Азиаты','Япония'),
('Англосаксы','Австралия'),
('Англосаксы','Австралия'),
('Англосаксы','Австрия');






