--Mieter1
CREATE TABLE Mieter_1(
MieterID int PRIMARY key,
Name varchar (60),
Vorname varchar(60),
Geburtstdatum Date CHECK (CURRENT_DATE - Geburtstdatum >18 ||CURRENT_DATE - Geburtstdatum <100),
Telefonnummer varchar(40) CHECK(VALUE SIMILAR TO('(\+[0-9][1-9]{2}%'ESCAPE'\'))
);

INSERT INTO Mieter_1 
SELECT MieterGeburtsdatum, MieterTelefon, substring (Mieter FROM 1 FOR 2)|| substring (Mieter FROM (POSITION(''IN Mieter)+1 FOR 2,
substring (Mieter FROM 1 FOR (POSITION (''IN Mieter))),
substring (Mieter FROM(POSITION(''IN Mieter)))FROM AUTOVERMIETUNG_0;

ALTER TABLE AUTOVERMIETUNG_0 ADD MieterFK int REFERENCES Mieter_1 (MieterID);

ALTER TABLE AUTOVERMIETUNG_0 DROP MieterGeburtsdatum,
DROP Mietertelefon, 
DROP Mieter;

--AUTOVERMIETUNG 2.0
--Fahrzeuge_1

CREATE TABLE Fahrzeuge_1 (
FahrzeugID int PRIMARY key,
Fahrzeugnummer varchar(17),
Automarke varchar(30),
Modell varchar(30),
KMStand int,
Kennzeichen varchar(10)
);

INSERT INTO Fahrzeuge_1
SELECT Fahrzeugnummer, Automarke, Modell, KMStand, Kennzeichen FROM AUTOVERMIETUNG_0 ;

ALTER TABLE Fahrzeuge_1 DROP KMStand;
ALTER TABLE Fahrzeuge_1 ADD KMEndstand;
ALTER TABLE Fahrzeuge_1 ADD KMStartstand;

ALTER TABLE AUTOVERMIETUNG_0 ADD MieterFK varchar(60) REFERENCES Fahrzeuge_1 (FahrzeugID);

ALTER TABLE AUTOVERMIETUNG_0 DROP Fahrzeugnummer,
DROP Automarke,
DROP Modell,
DROP KMStand,
DROP Kennzeichen;

SELECT GEMIETETVON , Kennzeichen, Nachname FROM AUTOVERMIETUNG_0 ;

--Kundenimport
CREATE TABLE Kunden_0 (
Nachname varchar (60),
Vorname varchar(60),
Geburtsdatum date,
Strasse varchar (60),
Hausnummer int, 
Postleitzahl int, 
Ort varchar(30),
Telefon varchar (40),
Mobil varchar (40),
Email varchar (70)
);

DROP TABLE Kunden_0;

INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Marah','Michel','4.3.1991','Breul 126',null,'Spiekeroog','0497689902784','01779430305','m.michel@mail.xyz'); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Muhammed','Lloyd','9.6.1966','An den Mühlen 33',null,'Dürrholz','0268471361468','01732634706','muhammed.lloyd@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Leonardo','Dick','14.12.1948','Schmeddingstr. 199',null,'Wüschheim','0676137881232','01656003430','leonardo.dick@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Madeleine','Kampmann','2.5.1963','Wolbecker Str. 174a','40233',null,null,'01555464858',null); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Tom','Köhler','28.8.1967','Tondernstr. 139',null,'Möckmühl',null,null,'tom.koehler@mail.xyz'); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Mohamed','Breuninger',null,'Schiffahrter Damm 50',null,'Heimenkirch','0838131888052','01695442505','mohamed.breuninger@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Sven','Lohmann','22.7.1991','Wolbecker Str. 170',null,'Nußdorf am Inn','0803417314331',null,'s.lohmann@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Nils','Little',null,'Kösliner Str. 23','56370','Schönborn',null,'01517489990',null); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Maurice','Daum','24.4.1939','Friesenring 21','79843','Löffingen','0765462192030','01659785256',null);
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Aleyna','Henseler','18.6.1939','Im Sonnentau 153',null,'Wismar','0384169622754','01577094096','a.henseler@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Carl','Mück','5.3.1979','Am Getterbach 175',null,'Kiel',null,'01645967375','carl.mueck@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Zoé','Brandner','28.4.1921','Eifelstr. 24',null,null,null,null,'zoe.brandner@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Alfred','Bachmann','2.3.1987','Dachsleite 13',null,'Selent',null,'01512733740','alfred.bachmann@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Jürgen','Powers','24.11.1920','Kirchstr. 128',null,'Wagenhoff',null,'01799244262',null);
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Svea','Mutschler',null,'Rinkerodeweg 160',null,null,'0655050337354','01633009235','svea.mutschler@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Sabrina','Lehnen','14.8.1935','Röttgensweg 133','13089','Heinersdorf','03053318207',null,null); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Emily','Geis',null,'Kanalstr. 17','93089','Aufhausen','0945499085275',null,null);
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Johannes','Kahn',null,'Am Pulverschuppen 25','95111',null,'0928335895288','01711936643','johannes.kahn@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Hartmut','Albers',null,'Von-der-Tinnen-Str. 188','92536',null,null,'01536477573','hartmut.albers@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Matti','Paul','4.6.1936','Bünkamp 160','27628',null,'0470241272328','01518948020','matti.paul@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Gerd','Mündel','23.4.1936','Osthuesheide 160',null,null,null,'01732996741','gerd.muendel@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Christel','Person','18.5.1936','Angelstr. 126a','66440','Bierbach','0684243709629','01691585809','c.person@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Frederik','Nash',null,'Kriegerweg 27','82387','Antdorf',null,null,'frederik.nash@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Kim','Pross',null,'Königsberger Str. 186','21465','Wentorf',null,'01737641185',null);
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Lyn','Laux','28.2.1986','Birkenweg 130','25782','Hövede',null,'01558156973','l.laux@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Helmut','Wolf',null,'Heisstr. 188',null,null,null,'01729800675',null);
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Julia','Sutton','23.12.1973','Friedrichstr. 175a','95691','Hohenberg an der Eger',null,'01665285449','j.sutton@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Jonah','Hellmann','3.10.1946','Nerzweg 40',null,'Kiesby','0464152395878',null,'j.hellmann@mail.xyz');
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Detlef','Wienand','2.6.2000','Angelstr. 92',null,null,null,'01583711539','detlef.wienand@mail.xyz'); 
INSERT INTO KUNDEN_0 (VORNAME, NACHNAME, GEBURTSDATUM, STRASSE, POSTLEITZAHL,
    ORT, TELEFON, MOBIL, EMAIL)
VALUES ('Torsten','Albrecht',null,'Deutz-Kalker Str. 49',null,null,'0954852651010',null,'torsten.albrecht@mail.xyz'); 


--Helden_1

CREATE TABLE Helden_1
(
    CharID int PRIMARY KEY,
    Name varchar(60) NOT null,
    Spielername varchar(60),
    CharLevel int CHECK (CharLevel BETWEEN 1 AND 99),
    Gesinnung char(1) CHECK (Gesinnung IN ('g','n','b')),
    Experiance int,
    Staerke int,
    Gewandtheit int,
    Geisteskraft int,
    Angriffskraft int,
    Zauberkraft int,
    Heimlichkeit int,
    RechteHand varchar(60),
    LinkeHand varchar(60),
    Kleidung varchar(60) CHECK (value IN (
'Robe', 'Lederruestung', 'Kettenhemd','Plattenruestung'));
    Rucksack varchar(255),
    Lebenspunkte int CHECK (Lebenspunkte BETWEEN -10 AND 100),
    Mana int
);

INSERT INTO HELDEN_1 (CHARID, NAME, CHARLEVEL, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ANGRIFFSKRAFT, RECHTEHAND, LINKEHAND, KLEIDUNG, LEBENSPUNKTE)
VALUES(1,'Krall', 1, 12, 8, 4, 10, 'Langschwert', 'Schild', 'Kettenhemd', 100);
INSERT INTO HELDEN_1 (CHARID, NAME, SPIELERNAME,CHARLEVEL, EXPERIANCE, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ZAUBERKRAFT, HEIMLICHKEIT, RECHTEHAND, KLEIDUNG,RUCKSACK, LEBENSPUNKTE, MANA)
VALUES(2,'Tarina', 'Karolin', 3, 4300, 3, 11,16,13, 11, 'Zauberschwert', 'Lederruestung', 'Seil, Trinkschlauch, Schlafrolle', 66,20);
SELECT Name, CHARLEVEL , SPIELERNAME FROM HELDEN_1 ;
INSERT INTO HELDEN_1 (CHARID, name, SPIELERNAME, CHARLEVEL, GESINNUNG, EXPERIANCE, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ANGRIFFSKRAFT, ZAUBERKRAFT,
HEIMLICHKEIT, RECHTEHAND, LINKEHAND, KLEIDUNG, RUCKSACK, LEBENSPUNKTE, MANA)
VALUES (3, 'Torin', 'Orin', 5, 'b', 50, 20, 60, 25, 40, 45, 35, 'Axt', 'Boblinbogen', 'Plattenruestung', 'Tarnmantel, Pfeile', 99, 30);
SELECT Name, Lebenspunkte, Gewandtheit FROM HELDEN_1 ORDER BY Gewandtheit desc;
SELECT round(angriffskraft*rand()*10) AS Angriff FROM HELDEN_1 WHERE Name = 'Krall';
SELECT round(Staerke*rand()*6) AS Schaden FROM HELDEN_1 WHERE Name = 'Krall';
SELECT NAME, iif(ROUND(ANGRIFFSKRAFT * rand()) < 5, 'verfehlt!', 'trifft und macht '|| ROUND(STAERKE + rand()*6) || ' Schaden!')   
FROM HELDEN_1 WHERE ANGRIFFSKRAFT IS NOT NULL AND STAERKE IS NOT NULL;
UPDATE HELDEN_1 SET GESINNUNG = 'n' WHERE  GESINNUNG  IS NULL ;
UPDATE HELDEN_1 SET EXPERIANCE = EXPERIANCE +7500 WHERE EXPERIANCE > 0;
UPDATE HELDEN_1 SET EXPERIANCE = 7500 WHERE EXPERIANCE IS NULL ;
UPDATE HELDEN_1 SET CHARLEVEL = 7 WHERE EXPERIANCE = 7500;
UPDATE HELDEN_1 SET CHARLEVEL = floor (experiance/1000);
DELETE FROM HELDEN_1 ;
UPDATE HELDEN_1 SET LEBENSPUNKTE = LEBENSPUNKTE -47  WHERE Lebenspunkte > 42 AND GESINNUNG = 'b';

--Autovermietung

CREATE DOMAIN T_Fon varchar(15);
create table Autovermietung_0
(
    Fahrzeugnummer char(17),
    Mietzaehler int,
    Automarke varchar(30),
    Modell varchar(30),
    Kennzeichen varchar(10),
    KMStand int,
    GemietetVon date,
    GemietetBis date,
    Mieter varchar(60),
    MieterTelefon T_Fon,
    MieterGeburtsdatum date,
    constraint PK_01 PRIMARY KEY(Mietzaehler),
    check (current_date - 21*365 >= MieterGeburtsdatum)
);


INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 1, 'BMW', '328i', 'BO-DO 4711', 6000, '3.3.2017', '5.3.2017', 'Frank Meier', '+491774563534',     '3.6.1966');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 2, 'BMW', '328i', 'BO-DO 4711', 6600, '8.3.2017', '15.3.2017', 'Tina Winter', '+49173562727',     '6.11.1972');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 3, 'BMW', '328i', 'BO-DO 4711', 6850, '16.3.2017', '22.3.2017', 'Oliver Klein', '+49172632345',     '23.4.1947');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 5, 'BMW', '328i', 'BO-DO 4711', 7302, '24.3.2017', '29.3.2017', 'Mika Marten', '+4917983392',     '13.3.1939');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 6, 'BMW', '328i', 'BO-DO 4711', 7566, '30.3.2017', '1.4.2017', 'Tom Walter', '+49176332472',     '25.4.1984');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 7, 'BMW', '328i', 'BO-DO 4711', 8033, '4.4.2017', '5.4.2017', 'Seth Brinkman', '+491723453',     '9.7.1976');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 8, 'BMW', '328i', 'BO-DO 4711', 8120, '7.4.2017',null, 'Lara Thoma', '+4917533453534',     '12.12.1969');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WF00355237A002345', 4, 'OPEL', 'Astra', 'BO-BO 1233', 3310, '4.3.2017', '7.3.2017', 'Tom Walter', '+49176332472',     '25.4.1984');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WF00355237A002345', 9, 'OPEL', 'Astra', 'BO-BO 1233', 3610, '11.3.2017', '17.3.2017', 'Martha Klein', '+491792342534',     '11.8.1978');
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WF00355237A002345', 10, 'OPEL', 'Astra', 'BO-BO 1233', 4217, '22.3.2017', null, 'Thorsten Karter', '+4917324523455',     '13.2.1966');

SELECT Mieter AS Fahrer, (GemietetBis - GemietetVon) AS "Abrechnungszeitraum in Tagen",
(GEMIETETBIS -GEMIETETVON )*45 AS "Betrag in € pro Tag" FROM AUTOVERMIETUNG_0 ;
SELECT Mieter FROM AUTOVERMIETUNG_0 WHERE Kennzeichen = 'BO-DO 4711' AND GEMIETETVON <= '26.3.2017' AND GEMIETETBIS >= '26.3.2017';
DELETE FROM AUTOVERMIETUNG_0 ;
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WDA2300123F140031', 11, 'BMW', '328i', 'BO-DO 4711', 8450, NULL, '12.4.2018', 'Martin Müller',  '+49177433234234', '4.3.1977');
-- UPDATE AUTOVERMIETUNG_0 SET Mieter = 'Martin Müller', MIETERGEBURTSDATUM  = '4.3.1977', MIETERTELEFON = '+49177433234234', KMSTAND = 8450, GEMIETETBIS = '12.4.2018' WHERE AUTOMARKE = 'BMW' AND MODELL = '328i';
-- UPDATE AUTOVERMIETUNG_0 SET GEMIETETBIS = '10.4.2018', GEMIETETVON = '13.4.2018', MIETER = 'Timo Schulze', MIETERGEBURTSDATUM = '17.7.1955',
	--	MIETERTELEFON = '+49 1732234244', KMSTAND = 6332 WHERE AUTOMARKE = 'Audi' AND MODELL = 'Astra' AND GEMIETETBIS IS NULL ;
INSERT INTO AUTOVERMIETUNG_0 VALUES ('WF00355237A002345', 12, 'Audi', 'Astra', 'BO-DO 1233', 6332,NULL , '13.4.2018', 'Martin Müller',  '+49177433234234', '4.3.1977');

	
CREATE TABLE AutoKunden_0 {
INSERT INTO AutoKunden_0 SELECT * FROM AUTOVERMIETUNG_0
};
INSERT INTO AutoKunden_0 SELECT * FROM AUTOVERMIETUNG_0 ;

--Projektmanagment_1

CREATE DOMAIN T_Projektname varchar(30) ;
CREATE DOMAIN T_Abteilung varchar(5) CHECK (value in ('AB_FI','AB_PR','AB_KT','AB_FD','AB_QS')) ;
CREATE DOMAIN T_Telefon varchar(18) ;

RECREATE TABLE Projektmanagment_1(
Projektname T_Projektname PRIMARY KEY,
Projektsponsor T_Abteilung,
Budget DEC (8,2) CHECK (Budget > 0),
PStart date,
PEnde date CHECK (PEnde > PStart),
Projektleiter varchar (60),
Abteilung T_Abteilung,
EMail varchar (70),
Telefonnummer T_Telefon,
AnzahlMitarbeiter int CHECK (AnzahlMitarbeiter > 0)
);

INSERT INTO PROJEKTMANAGMENT_1 VALUES
('PRJ_Car2Fit', 'AB_FD', 20000, '2018-04-13', NULL, 'Thomas Muster', 'AB_FD', 'T.Muster@Beispiel.de',NULL, 4);
INSERT INTO PROJEKTMANAGMENT_1 VALUES 
('PRJ_SaleStar', 'AB_FI', 33000, '2018-02-01', '2018-03-18', 'Kilian Meier', 'AB_FI', NULL, '+49 555 2747', 2);
INSERT INTO PROJEKTMANAGMENT_1 VALUES 
('PRJ_QualFirst', 'AB_QS', 45000, '2016-05-01', NULL, 'Frank Meier', 'AB_QS', 'F.Meier@Beispiel.de', '+49 555 6263', 8);
INSERT INTO PROJEKTMANAGMENT_1 VALUES 
('PRJ_ManCon', 'AB_KT', 55000, '2018-01-20', '2018-04-03', 'Thomas Muster', 'AB_FD', 'T.Muster@Beispiel.de', '+49 555 3221', 3);
INSERT INTO PROJEKTMANAGMENT_1 VALUES 
('PRJ_AmCom', 'AB_FD', 12500, '2016-12-13', '2018-01-15', 'Kilian Meier', 'AB_FI', 'K.Meier@Beispiel.de', NULL, 3);
INSERT INTO PROJEKTMANAGMENT_1 VALUES ( 'PRJ_FinForce', 'AB_FI',50000,  '2018-05-01',  NULL, 'Thomas Förster','AB_FD', NULL,   '+40 5552755',  NULL);
INSERT INTO PROJEKTMANAGMENT_1 VALUES 
('PRJ_AmCom2', 'AB_FD', 25000, '2018-07-01','2018-09-01', 'Kilian Meier Hinterhof', 'AB_FI', 'K.Meier_Hinterhof@Beispiel.de',nuLL,4);


SELECT Projektname, Budget, AnzahlMitarbeiter FROM PROJEKTMANAGMENT_1 ;
SELECT DISTINCT Projektleiter, Abteilung, EMail, TELEFONNUMMER FROM PROJEKTMANAGMENT_1 ORDER BY PROJEKTLEITER ;
SELECT sum (Budget*0.2+2500*AnzahlMitarbeiter) AS Rueckstellungen FROM PROJEKTMANAGMENT_1 WHERE PEnde IS NULL GROUP BY Projektname ORDER BY Rueckstellungen;
SELECT count(*) FROM PROJEKTMANAGMENT_1 WHERE PENDE IS NULL;
SELECT count(AnzahlMitarbeiter) FROM PROJEKTMANAGMENT_1 WHERE PStart BETWEEN '2018-02-01' and '2018-02-28' OR Pende  BETWEEN '2018-02-01' and '2018-02-28';
UPDATE PROJEKTMANAGMENT_1 SET PEnde = '2018-07-15', ANZAHLMITARBEITER = (ANZAHLMITARBEITER -1) WHERE PROJEKTNAME = 'PRJ_ManCon';
UPDATE PROJEKTMANAGMENT_1 SET Budget = Budget+50000 WHERE PROJEKTNAME = 'PRJ_QualFirst';
UPDATE PROJEKTMANAGMENT_1 SET PENDE = '2018-10-01', Budget = Budget +15000, ANZAHLMITARBEITER = ANZAHLMITARBEITER +1 WHERE PROJEKTNAME = 'PRJ_Car2Fit';
UPDATE PROJEKTMANAGMENT_1 SET PROJEKTLEITER = 'Kilian Meier Hinterhof', Email = 'K.Meier_Hinterhof@Beispiel.de' WHERE PROJEKTNAME = 'PRJ_AmCom';
UPDATE PROJEKTMANAGMENT_1 SET PROJEKTLEITER  = 'Thomas Förster' , Email= NULL,  TELEFONNUMMER = '+40 5552755' WHERE PROJEKTLEITER = 'Thomas Muster';
UPDATE PROJEKTMANAGMENT_1 SET Budget = Budget - (Budget*0.05) WHERE PEnde > '2018-12-31';
UPDATE PROJEKTMANAGMENT_1 SET PENDE = '2018-08-03', Budget = budget *0.95 WHERE PROJEKTNAME = 'PRJ_QualFirst';
UPDATE PROJEKTMANAGMENT_1 SET Budget = Budget + budget*0.10, ANZAHLMITARBEITER = ANZAHLMITARBEITER +2, PENDE = '2018-12-31' WHERE PROJEKTNAME = 'PRJ_FinForce';
SELECT Projektname, sum (Budget*0.2+2200*AnzahlMitarbeiter) AS Rueckstellungen FROM PROJEKTMANAGMENT_1 GROUP BY Projektname ORDER BY Rueckstellungen asc;
SELECT PROJEKTNAME AS Projekt, BUDGET AS "Budget in Euro",ANZAHLMITARBEITER AS Mitarbeiter, BUDGET * 0.2 + 2200 *ANZAHLMITARBEITER AS Rueckstellungen FROM PROJEKTMANAGMENT_1 ORDER BY Rueckstellungen ASC;

--Lagerbestand 1

CREATE DOMAIN T_Herst varchar (6)
CHECK (VALUE IN ('intel', 'asus', 'amd', 'nvidia', 'msi'));
CREATE DOMAIN T_Kategorie varchar(15) CHECK (value IN( 'Mainboard', 'Prozessor', 'Grafikkarte'));
CREATE TABLE Lagerbestand_1(
    ProduktID int PRIMARY KEY,
    Hersteller T_Herst,
    Kategorie T_Kategorie,
    Anzahl int CHECK (Anzahl > 0),
    Preis decimal,
    Lieferdatum  date,
    Bestelldatum date CHECK (Bestelldatum < Lieferdatum)
);

INSERT INTO Lagerbestand_1 VALUES (1, 'asus', 'Mainboard', 4, 245.00, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_1 VALUES (2, 'asus', 'Mainboard', 4, 300.00, '2018-04-23', '2018-02-10');
INSERT INTO Lagerbestand_1 VALUES (3, 'intel', 'Mainboard', 4, 299.99, '2018-12-22', '2018-12-05');
INSERT INTO Lagerbestand_1 VALUES (4, 'intel', 'Prozessor', 4, 145.00, '2019-01-02', '2018-12-20');
INSERT INTO Lagerbestand_1 VALUES (5, 'intel', 'Prozessor', 4, 499.00, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_1 VALUES (6, 'intel', 'Grafikkarte', 4, 899.99, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_1 VALUES (7, 'intel', 'Grafikkarte', 4, 249.50, '2017-07-30', '2017-07-20');
INSERT INTO Lagerbestand_1 VALUES (8, 'amd', 'Grafikkarte', 2, 149.50, '2019-01-30', '2019-01-20');

SELECT Kategorie, Hersteller, Preis,  preis*0.19 AS Mwst FROM LAGERBESTAND_1 ORDER BY KATEGORIE ;
SELECT hersteller, Kategorie, Preis, (Lieferdatum-Bestelldatum) AS "Lieferzeit in Tagen" FROM LAGERBESTAND_1 ;
SELECT PRODUKTID , Anzahl, Preis + Preis*0.19 AS "Preis inkl MwSt" FROM LAGERBESTAND_1 WHERE Kategorie = 'Grafikkarte' AND HERSTELLER = 'amd';
DELETE FROM LAGERBESTAND_1 ;
UPDATE LAGERBESTAND_1  SET preis = preis + preis *5/100;
UPDATE LAGERBESTAND_1 SET Anzahl = Anzahl -1 WHERE HERSTELLER = 'intel' AND KATEGORIE ='Prozessor';
UPDATE LAGERBESTAND_1 SET Anzahl = Anzahl +1 WHERE KATEGORIE = 'Grafikkarte' AND HERSTELLER = 'amd';
SELECT Preis + Preis*19/100 AS "Preis + MwSt" FROM LAGERBESTAND_1 ;

--Schueler_0

CREATE TABLE Schueler_0
(
Nachname varchar(30),
Vorname varchar(30),
Rufname varchar(30),
Geschlecht char,
Konfession char (2),
Klasse int,
Bemerkung varchar(250)
);

--Helden_0 (meine HeldenTabelle)

CREATE TABLE HELDEN_0(
Name varchar (60),
Spielername varchar (60),
Charlevel int,
Experiance int,
Staerke int,
Gewandtheit int,
Geisteskraft int,
Zauberkraft int,
Heimlichkeit int,
Angriffskraft int,
Rechtehand varchar(60),
Linkehand varchar (60),
Kleidung varchar (60),
Rucksack varchar (255),
Lebenspunkte int,
Mana int
);


INSERT INTO HELDEN_0 (NAME, CHARLEVEL, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ANGRIFFSKRAFT, RECHTEHAND, LINKEHAND, KLEIDUNG, LEBENSPUNKTE)
VALUES('Krall', 1, 12, 8, 4, 10, 'Langschwert', 'Schild', 'Kettenhemd', 100);
INSERT INTO HELDEN_0 (NAME, SPIELERNAME,CHARLEVEL, EXPERIANCE, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ZAUBERKRAFT, HEIMLICHKEIT, RECHTEHAND, KLEIDUNG,RUCKSACK, LEBENSPUNKTE, MANA)
VALUES('Tarina', 'Karolin', 3, 4300, 3, 11,16,13, 11, 'Zauberschwert', 'Robe', 'Seil, Trinkschlauch, Schlafrolle', 66,20);

INSERT INTO HELDEN_0 VALUES ('Tara', NULL, 1, 2, NULL, 3, NULL, 17, 23, 34, 'Axt', NULL, 'Gewand', 'Langbogen, Feuerpfeile', 20, NULL);

SELECT Name, Lebenspunkte, Gewandtheit FROM HELDEN_0 ORDER BY Gewandtheit;
SELECT Angriffskraft FROM HELDEN_0 ;
