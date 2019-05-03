CREATE TABLE public.job (
    id character varying,
    name character varying,
    city character varying
);


CREATE TABLE public.products (
    color character varying,
    id character varying,
    name character varying,
    weight integer,
    city character varying
);



CREATE TABLE public.shipper (
    id character varying,
    name character varying,
    raiting integer,
    city character varying
);



CREATE TABLE public.supply (
    sid character varying,
    pid character varying,
    jid character varying,
    num integer
);




CREATE VIEW public.spj AS
 SELECT job.name AS job_name,
    job.city AS job_city,
    products.color,
    products.name AS product_name,
    products.weight,
    products.city AS product_city,
    shipper.name AS shipper_name,
    shipper.raiting,
    shipper.city AS shipper_city
   FROM (((public.supply
     JOIN public.job ON (((job.id)::text = (supply.jid)::text)))
     JOIN public.products ON (((products.id)::text = (supply.pid)::text)))
     JOIN public.shipper ON (((shipper.id)::text = (supply.sid)::text)));


INSERT INTO public.job (id, name, city) VALUES ('J1', 'Жесткий диск', 'Париж');
INSERT INTO public.job (id, name, city) VALUES ('J2', 'Перфоратор', 'Рим');
INSERT INTO public.job (id, name, city) VALUES ('J3', 'Считыватель', 'Афины');
INSERT INTO public.job (id, name, city) VALUES ('J4', 'Принтер', 'Афины');
INSERT INTO public.job (id, name, city) VALUES ('J5', 'Флоппи-диск', 'Лондон');
INSERT INTO public.job (id, name, city) VALUES ('J6', 'Терминал', 'Осло');
INSERT INTO public.job (id, name, city) VALUES ('J7', 'Лента', 'Лондон');
INSERT INTO public.job (id, name, city) VALUES ('J8', 'Ноутбук', 'Москва');



INSERT INTO public.products (color, id, name, weight, city) VALUES ('Красный', 'P1', 'Гайка', 12, 'Лондон');
INSERT INTO public.products (color, id, name, weight, city) VALUES ('Зеленый', 'P2', 'Болт', 17, 'Париж');
INSERT INTO public.products (color, id, name, weight, city) VALUES ('Голубой', 'P3', 'Винт', 17, 'Рим');
INSERT INTO public.products (color, id, name, weight, city) VALUES ('Красный', 'P4', 'Винт', 14, 'Лондон');
INSERT INTO public.products (color, id, name, weight, city) VALUES ('Голубой', 'P5', 'Кулачок', 12, 'Париж');
INSERT INTO public.products (color, id, name, weight, city) VALUES ('Красный', 'P6', 'Блюм', 19, 'Лондон');


INSERT INTO public.shipper (id, name, raiting, city) VALUES ('S1', 'Смит', 20, 'Лондон');
INSERT INTO public.shipper (id, name, raiting, city) VALUES ('S3', 'Блейк', 30, 'Париж');
INSERT INTO public.shipper (id, name, raiting, city) VALUES ('S2', 'Джонс', 10, 'Париж');
INSERT INTO public.shipper (id, name, raiting, city) VALUES ('S4', 'Кларк', 20, 'Лондон');
INSERT INTO public.shipper (id, name, raiting, city) VALUES ('S5', 'Адамс', 30, 'Афины');


INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S1', 'P1', 'J1', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S1', 'P1', 'J4', 700);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J1', 400);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J2', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J3', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J4', 500);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J5', 600);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J6', 400);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P3', 'J7', 800);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S2', 'P5', 'J2', 100);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S3', 'P3', 'J1', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S3', 'P4', 'J2', 500);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S4', 'P6', 'J3', 300);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S4', 'P6', 'J7', 300);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P2', 'J2', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P2', 'J4', 100);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P5', 'J5', 500);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P5', 'J7', 100);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P6', 'J2', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P1', 'J4', 100);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P3', 'J4', 200);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P4', 'J4', 800);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P5', 'J4', 400);
INSERT INTO public.supply (sid, pid, jid, num) VALUES ('S5', 'P6', 'J4', 500);


alter table public.job
	add primary key (id);
	
alter table public.products
	add primary key (id);
	
alter table public.shipper
	add primary key (id);


alter table public.supply
	add primary key (sid, pid, jid),
	add foreign key (sid) references public.shipper (id) on delete cascade,
	add foreign key (jid) references public.job (id) on delete restrict,
	add foreign key (pid) references public.products (id) on delete restrict;

