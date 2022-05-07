create database veranstaltung3;

source /Users/sophieischenko/Documents/CEnergy_Create_V4_altered.sql;
source /Users/sophieischenko/Documents/CEnergy_insert_V4_altered.sql;

--Aufgabe 1

select concat(Kunde.Nachname, ', ', Kunde.Vorname) as Name,
Vertrag.VertragID as Vertrag,
TarifArt.TarifArtBez as Tarif, 
Tarif.KostenProEinheit as 'Kosten P/E', 
Vertrag.VertragsBeginn as Beginn
from Vertrag
join Kunde on Vertrag.KundeFK = Kunde.KundeID
join Tarif on Vertrag.VertragID = Tarif.VertragFK
join TarifArt on Tarif.TariArtFK = TarifArt.TarifArtKey
order by Kunde.Nachname;

--select Kunde.Nachname||'.'||Kunde.Vorname as Name

--Aufgabe 2

select concat(Kunde.Nachname, ', ', Kunde.Vorname) as Name,
Adresse.Strasse as Strasse,
Adresse.Postleitzahl as PLZ,
Adresse.Stadt as Ort
from Kunde 
join Adresse on Kunde.KundeID = Adresse.KundeFK
order by Name;

--Aufgabe 3

select Rechnung.RechnungsDatum as Rechnungsdatum,
Rechnung.AbrechnungsJahr as Jahr,
TarifArt.TarifArtBez as Tarif,
Rechnungsposition.AbrechnungsEinheiten as Einheiten,
Rechnungsposition.Betrag as 'Betrag in Euro'
from Rechnung
join Rechnungsposition on Rechnung.RechnungID = Rechnungsposition.RechnungFK
join Tarif on Tarif.TarifID = Rechnungsposition.TarifFK
join TarifArt on Tarif.TariArtFK = TarifArt.TarifArtKey
order by Rechnung.RechnungsDatum;

--Aufgabe 4
alter table Sachbearbeiter add StellvertreterIn int;
alter table Sachbearbeiter add constraint FK_Sachbearbeiter
foreign key (StellvertreterIn) REFERENCES Sachbearbeiter(MitarbeiterID);

insert into Sachbearbeiter 
(Vorname, Nachname, MitarbeiterID, Telefonnummer, EMailAdresse, StellvertreterIn)
values
('Helga', 'Hermann', 2, '123456', 'Helga.Hermann@huhu.de', 1);

update Sachbearbeiter 
set StellvertreterIn =  2 where StellvertreterIn is null;

select Vertrag.VertragID as Vertrag,
Vertrag.VertragsBeginn as Beginn,
concat(Sachbearbeiter.Vorname, ', ', Sachbearbeiter.Nachname) as Sachbearbeiter,
Sachbearbeiter.StellvertreterIn as Stellvertreter
from Vertrag
join Sachbearbeiter on Vertrag.SachbearbeiterFK = Sachbearbeiter.MitarbeiterID;