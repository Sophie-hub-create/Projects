create database uebung2;

create table Modul(
    ModulNr int not null primary key, 
    Fachname varchar(60),
    Verantwortliche varchar(60),
    Aenderungsdatum date
);

--firebird CONSTRAINT PK_Modul PRIMARY KEY(ModulNR);

create table Lehrveranstaltung(
    LVNR int not null primary key,
    LV_Name varchar(60),
    Art varchar(155),
    SWS int,
    Dozent varchar(60),
    modul_nr varchar(20)
);

insert into Modul (ModulNR, Fachname, Verantwortliche, Aenderungsdatum)
VALUES
(74000, 'Informatik', 'Mueller', '2017-01-01'),
(74050, 'Informationstechnik', 'Dieters', '2016-05-16'),
(74100, 'Statistik', 'Pers', '2017-07-03');

insert into Lehrveranstaltung (LVNR, LV_Name, Art, SWS, Dozent, modul_nr)
VALUES
(77001, 'GDI', 'Vorlesung', 4, 'Mueller', '74050; 74000'),
(77002, 'GDI', 'Uebung', 2, 'Mueller', '74050; 74000'),
(77003, 'GDI 2', 'Vorlesung', 4, 'Dieters', '74050; 74000'),
(77004, 'GDI 2', 'Uebung', 2, 'Dieters', '74050; 74000'),
(77005, 'Programmieren', 'Vorlesung', 4, 'Meier', '74000'),
(77006, 'Programmieren', 'Uebung', 2, 'Meier', '74000'),
(77007, 'DB 1', 'Vorlesung', 4, 'Pers', '74000; 74100; '),
(77008, 'DB 2', 'Vorlesung', 2, 'Pers', '74000; 74100'),
(77009, 'Java', 'Vorlesung', 4, 'Dieters', '74050'),
(77010, 'Java 2', 'Seminar', 1, 'Dieters', '74050'),
(77011, 'Rechnernetze', 'Vorlesung', 2, 'Mueller', '74100');

alter table Lehrveranstaltung drop column modul_nr;

create table LV_zu_Modul(
    ModulNummer int,
    LehrV_NR int,
    FOREIGN key(ModulNummer) REFERENCES modul(ModulNR),
    FOREIGN KEY(LehrV_NR) REFERENCES Lehrveranstaltung(LVNR),
    primary key(ModulNummer, LehrV_NR)
);

insert into LV_zu_Modul (ModulNummer, LehrV_NR) 
VALUES
(74050, 77001),
(74000, 77001),
(74050, 77002),
(74000, 77002),
(74050, 77003),
(74000, 77003),
(74050, 77004),
(74000, 77004),
(74000, 77005),
(74000, 77006),
(74050, 77007),
(74000, 77007),
(74100, 77007),
(74000, 77008),
(74100, 77008),
(74050, 77009),
(74050, 77010),
(74100, 77011);

--Aufgabe 2a)

Select Modul.Fachname, sum(Lehrveranstaltung.SWS) 
as Stundenanzahl
from LV_zu_Modul 
join Modul on LV_zu_Modul.ModulNummer= Modul.ModulNR
join Lehrveranstaltung on LV_zu_Modul.LehrV_NR=Lehrveranstaltung.LVNR
where Lehrveranstaltung.Art='Uebung'
group by ModulNummer
order by Stundenanzahl desc;

--Aufgabe 2 b)

Select Lehrveranstaltung.Dozent, Lehrveranstaltung.LV_Name, 
from LV_zu_Modul 
join Modul on LV_zu_Modul.ModulNummer= Modul.ModulNR
join Lehrveranstaltung on LV_zu_Modul.LehrV_NR=Lehrveranstaltung.LVNR
where Lehrveranstaltung.Art='Vorlesung' 
and Lehrveranstaltung.Dozent != Modul.Verantwortliche;

--??? manche Faecher sind mehreren Modulen zugeordnet. Beim zweiten kann der 
--Dozent dann uU kein Verantwortlicher sein???

--Aufgabe 3

select modul.fachname, Lehrveranstaltung.LV_Name, 
Lehrveranstaltung.Art 
from modul 
join LV_zu_Modul 
on modul.ModulNR=LV_zu_Modul.ModulNummer 
join Lehrveranstaltung 
on LV_zu_Modul.LehrV_NR=Lehrveranstaltung.LVNR;


