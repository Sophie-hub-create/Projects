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

--Veranstaltung 4

--Aufgabe 1

Select Vertrag.VertragID as 'VNR', 
concat(Kunde.Nachname, ', ', Kunde.Vorname) as 'Name',
concat(Adresse.Strasse, ' ', Adresse.Hausnummer,' ', 
Adresse.Postleitzahl,' ', Adresse.Stadt, '.' ) as 'Adresse',
Rechnung.Gesamtbetrag from Vertrag
join Adresse on Vertrag.AdresseFK = Adresse.AdressID
join Rechnung on Vertrag.VertragID = Rechnung.VertragFK
join Kunde on Kunde.KundeID = Vertrag.KundeFK
where 
Vertrag.VertragID in 
(Select Vertrag.VertragID from Vertrag
join Tarif on Vertrag.VertragID = Tarif.VertragFK
group by Vertrag.VertragID having count(*) > 1)
and Gesamtbetrag >400 
and Vertrag.VertragsBeginn = 2016;


Select Vertrag.VertragID from Vertrag
join Tarif on Vertrag.VertragID = Tarif.VertragFK
group by Vertrag.VertragID having count(*) > 1;

--Aufgabe 2

select Rechnung.RechnungsDatum as Rechnungsdatum,
Rechnung.AbrechnungsJahr as Jahr,
TarifArt.TarifArtBez as Tarif,
Rechnungsposition.AbrechnungsEinheiten as Einheiten,
Rechnungsposition.Betrag as 'Betrag in Euro'
from Rechnung
join Vertrag on Rechnung.VertragFK = Vertrag.VertragID
join Rechnungsposition on Rechnung.RechnungID = Rechnungsposition.RechnungFK
join Tarif on Tarif.TarifID = Rechnungsposition.TarifFK
join TarifArt on Tarif.TariArtFK = TarifArt.TarifArtKey
where
Vertrag.VertragID in
(Select Vertrag.Vertrag ID from Vertrag 
join Adresse on Vertrag.AdresseFK = Adresse.AdressID
join Kunde on Kunde.KundeID = Adress.KundeFK
Adresse.Strasse = 'Parkstrasse'
and Adresse.Hausnummer = '12' 
and Kunde.Vorname = 'Thomas'
and Kunde.Nachname = 'Meier'
)
order by Rechnung.RechnungsDatum;

--Aufgabe 3

update Rechnungsposition
set zaehlerstand = 2545,
AbrechnungsEinheiten = 2500
where (TarifFK, RechnungFK) in 
(Select Tarif.TarifID, Rechnung.RechnungID from Vertrag 
join Adresse on Vertrag.AdresseFK = Adresse.AdressID
join Rechnung on Rechnung.VertragFK = Vertrag.VertragID
join Tarif on Tarif.VertragFK = Vertrag.VertragID
where 
Adresse.Strasse = 'Parkstrasse'
and Adresse.Hausnummer = '11a');

Select Tarif.TarifID, Rechnung.RechnungID from Vertrag 
join Adresse on  Adresse.AdressID = Vertrag.AdresseFK 
join Rechnung on Rechnung.VertragFK = Vertrag.VertragID
join Tarif on Tarif.VertragFK = Vertrag.VertragID
where 
Adresse.Strasse = 'Parkstrasse'
and Adresse.Hausnummer = '11a';

---Gesamtrechung noch ergaenzen!!!

update Rechnungsposition
Betrag = 2500 * (Select KostenProEinheit from Tarif
 where TarifID = Rechnungsposition.TarifFK)
where (TarifFK, RechnungFK) in 
(Select Tarif.TarifID, Rechnung.RechnungID from Vertrag 
join Adresse on Vertrag.AdresseFK = Adresse.AdressID
join Rechnung on Rechnung.VertragFK = Vertrag.VertragID
join Tarif on Tarif.VertragFK = Vertrag.VertragID
where 
Adresse.Strasse = 'Parkstrasse'
and Adresse.Hausnummer = '11a');
