use hw20230907;

/*
    3. Написать запрос для вывода списка машин в виде модель автомобиля, страна производитель, цвет машины, машин,
       у которых год выпуска моложе, чем 2000.
 */
select
     model, country, colour, year_prod
from cars
where year_prod > 2000
order by model, year_prod desc;

/*
    4. Написать запрос, который выводит количество автомобилей определённой марки.
 */
select
    *
from cars
where model like 'Audi%'
order by model, year_prod desc;
