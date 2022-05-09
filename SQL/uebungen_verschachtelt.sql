create database uebungen_verschachtelt;
use uebungen_verschachtelt;

create table laender(
    Landname varchar(100) primary key,
    Region varchar(100),
    Flaeche int,
    Einwohner int, 
    BIP bigint
);

insert into laender(Landname, Region, Flaeche, Einwohner, BIP)
values
('Afghanistan', 'Asien', 652000, 25838797, 21000000000),
('Albanien', 'Europa', 28748, 3490435, 5600000000),
('Algerien', 'Afrika', 2381740, 31193917, 147600000000),
('Amerikanische Samoa-Inseln', 'Ozeanien', 199, 65446, 150000000),
('Angulla', 'Mittelamerika', 91, 11797, 88000000),
('Antarktik', 'Antarktis', 14000000, 0, 0),
('Argentinien', 'Suedamerika', 2766890, 36955182, 367000000000),
('Armenien', 'Osteuropa', 29800, 3344336, 9900000000);

Select Landname from laender 
where Einwohner > (
    select max(Einwohner) as 'max'
     from laender
    where Region ='Suedamerika'
);

select Landname from laender
where Einwohner >
(select max(Einwohner) from laender
where Region = 'Europa');

select Landname from laender
where BIP >
(Select BIP from laender where name = 'Groß-Britannien');

select * 
from laender
where region in
(select region from laender where Landname in ('Armenien','Iran'));

select Landname from laender
where (einwohner/flaeche) >
(Select avg(einwohner/flaeche) 
from laender where region ='Suedostasien');

select Landname from laender
where einwohner >
(select Einwohner from laender where landname ='Kenia')
and  einwohner <
(select Einwohner from laender where landname = 'Kanada');

