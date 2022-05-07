create database uebung1;

create table Buch(
    ISBN int primary key,
    Titel varchar(255),
    Autor1 varchar(100),
    Autor2 varchar(100),
    Autor3 varchar(100),
    Heruasgeber varchar(100),
    Erscheinungsdatum date
);

create table Exemplar(
    ExemplarID int primary key,
    Beschaffungsdatum date,
    ISBN_FK int,
    foreign key(ISBN_FK) REFERENCES Buch(ISBN)
);

create table Ausleihe(
    AusleiheID int primary key,
    Ausleihdatum date,
    Rueckgabedatum date,
    ExemplarID_FK int,
    LeserID_FK int, 
    foreign key(ExemplarID_FK) REFERENCES Exemplar(ExemplarID),
    FOREIGN key(LeserID_FK) REFERENCES Leser(LeserID)
);

create table Leser(
    LeserID int primary key,
    Name varchar(255)
);

select b.Titel, b.Autor1, l.Name, a.Ausleihdatum 
from Ausleihe as a
left join Exemplar as e on a.ExemplarID_FK = e.ExemplarID
left join Leser as l on a.LeserID_FK = l.LeserID
left join Buch as b on e.ISBN_FK = b.ISBN
order by a.Ausleihdatum;

select l.Name, b.Titel, a.Rueckgabedatum, count(l.LeserID) as 'Anzahl'
from Leser as l
left join Ausleihe as a on l.LeserID = a.LeserID_FK
left join Exemplar as e on a.ExemplarID_FK = e.ExemplarID
left join Buch as b on e.ISBN_FK = b.ISBN
where Anzahl> 3 and a.Rueckgabedatum is null
group by l.LeserID;

Select Buch.Titel1, count(Exemplar.ExemplarID) as Anzahl, count((exemplar.ExemplarID/Ausleihe.AusleiheID)) as 'prozentuale Ausleihen'
from Exemplar
left join Buch on Exemplar.ISBN_FK = Buch.ISBN
left join Ausleihe on Exemplar.ExemplarID = Ausleihe.ExemplarID_FK;