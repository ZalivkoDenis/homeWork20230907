/*

Д/з по сроку 07/09/2023:

    1. Создать таблицу Car: марка, год выпуска, страна выпуска, объём двигателя, цена, цвет.
    2. Добавить 10 записей одним запросом (некоторые поля должны быть NULL).
    3. Написать запрос для вывода списка машин в виде модель автомобиля, страна производитель, цвет машины, машин,
       у которых год выпуска моложе, чем 2000.
    4. Написать запрос, который выводит количество автомобилей определённой марки.

N.B. Добавить там, где возможно, к каждому запросу сортировку отнросительно фирмы по убыванию.

 */

 create database if not exists hw20230907;

use hw20230907;

drop table if exists cars;
create table cars
(
    id           int primary key auto_increment,
    model        varchar(64) not null ,
    year_prod    year,
    country      varchar(32),
    engine_value float not null,
    cost         decimal(10, 2),
    colour       varchar(32)
);

insert into cars (model, year_prod, country, engine_value, cost, colour)
values
    ('Audi A4', 2010, 'Germany', 1.8, 15000, 'white'),
    ('Audi A4', 2010, 'Germany', 1.8, 15000, 'black'),
    ('Audi A4', 2010, 'Germany', 1.8, 15000, 'red'),
    ('Skoda Octavia', 2008, 'Czech Republic', 1.6, 7000, 'silver'),
    ('Skoda Octavia', 2020, 'Czech Republic', 1.6, 5000, 'white'),
    ('Skoda Octavia', 1998, 'Czech Republic', 1.8, 3000, null),
    ('Peugeot 406', 1990, 'France', 1.8, 1000, 'red' ),
    ('Peugeot 406', 1995, 'France', 1.8, 2000, 'white'),
    ('Peugeot 406', 2000, 'France', 1.8, 2500, 'black'),
    ('Peugeot 406', 2005, 'France', 1.8, 3000, 'white');
