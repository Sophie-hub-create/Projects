create database schule;
use schule;

create table Schueler(
    SchuelerID int primary key,
    Nachname varchar(60),
    Vorname varchar(60)
);

create table Pruefungsfach(
    FachID int primary key,
    Fachname varchar(60)
);

create table Pruefung(
    PruefungID int primary key,
    Abschlussart varchar(60),
    Jahr char(4),
    Datum date,
    Note decimal(3.1),
    SchuelerID_FK int not null,
    foreign key(SchuelerID_FK) REFERENCES Schueler(SchuelerID),
    FachID_FK int not null,
    foreign key(FachID_FK) REFERENCES Pruefungsfach(FachID)
);

insert into Schueler(SchuelerID, Nachname, Vorname)
values
(1, 'Mueller', 'Helga'),
(2, 'Weihnachtsmann', 'Mister'),
(3, 'Lothbrok', 'Ragnar'),
(4, 'Ragnarson', 'Bjorn'),
(5, 'Ragnardota', 'Stiorra');

insert into Pruefungsfach(FachID, Fachname)
values
(1, 'Mathe'),
(2, 'Deutsch'),
(3, 'Englisch'),
(4, 'Franzoesisch'),
(5, 'Latein'),
(6, 'Sport'),
(7, 'Chemie'),
(8, 'Physik'),
(9, 'Biologie'),
(10, 'Informatik');

insert into Pruefung(PruefungID, Abschlussart, Jahr, Datum, Note, SchuelerID_FK, FachID_FK)
values
(1, 'Fachabitur', '2022','2022-03-02', 1.2, 1,3),
(2, 'Fachabitur', '2022','2022-02-03', 1.3, 1,2),
(3, 'Fachabitur', '2022','2022-04-05', 3.4, 1,4),
(4, 'Fachabitur', '2022','2022-05-04', 5.2, 1,10),
(5, 'Fachabitur', '2022','2022-06-07', 2.2, 1,9),
(6, 'Fachabitur', '2022','2022-07-07', 2.1, 1,8),
(7, 'Mittlere Reife', '2022', '2022-03-02',5.2, 2,1),
(8, 'Mittlere Reife', '2022','2022-02-03', 4.2, 2,5),
(9, 'Mittlere Reife', '2022','2022-04-05', 3.2, 2,6),
(10, 'Mittlere Reife', '2022','2022-05-04', 2.4, 2,7),
(11, 'Mittlere Reife', '2022','2022-06-07', 1.7, 2,8),
(12, 'Mittlere Reife', '2022','2022-07-07', 4.8, 2,9),
(13, 'Fachabitur', '2022', '2022-03-02', 1.2, 3,10),
(14, 'Fachabitur', '2022','2022-02-03', 4.8, 3,9),
(15, 'Fachabitur', '2022','2022-04-05', 1.3, 3,8),
(16, 'Fachabitur', '2022','2022-05-04', 2.2, 3,7),
(17, 'Fachabitur', '2022', '2022-06-07',1.2, 3,6),
(18, 'Fachabitur', '2022','2022-07-07', 1.2, 3,5),
(19, 'Abitur', '2022','2022-03-02', 1.2, 5,3),
(20, 'Abitur', '2022','2022-02-03', 14.8, 5,4),
(21, 'Abitur', '2022','2022-04-05', 1.3, 5,5),
(22, 'Abitur', '2022','2022-05-04', 2.2, 5,6),
(23, 'Abitur', '2022','2022-06-07', 1.9, 5,7),
(24, 'Fachabitur', '2022','2022-03-02', 1.2, 4,2),
(25, 'Fachabitur', '2022','2022-02-03', 4.8, 4,10),
(26, 'Fachabitur', '2022','2022-04-05', 1.3, 4,4),
(27, 'Fachabitur', '2022','2022-05-04', 5.2, 4,7);

select concat(Schueler.Nachname, ', ', Schueler.Vorname) as Name,
Pruefungsfach.Fachname
from Schueler
join Pruefung on Pruefung.SchuelerID_FK = Schueler.SchuelerID
join Pruefungsfach on Pruefungsfach.FachID = Pruefung.FachID_FK
where Abschlussart = 'Abitur';

select Pruefungsfach.Fachname
from Pruefungsfach
join Pruefung on Pruefungsfach.FachID = Pruefung.FachID_FK
where Abschlussart = 'Abitur';