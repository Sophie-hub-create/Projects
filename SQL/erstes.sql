-----Zusammengefasst--------------

CREATE table tweets(
username varchar(15),
tweet_content varchar (140),
num_favs int
)

create table pastries(
name varchar(50),
quantity varchar (50)
)

drop table pastries ;

create table people (
first_name carchar(20),
last_name varchar(20),
age int
)

drop table people;

insert into people (first_name, last_name, age) values ('Tina', 'Belcher', 13);
insert into people (first_name, last_name, age) values ('Bob', 'Belcher', 42);
insert into people (first_name, last_name, age) values ('Linda', 'Belcher', 45),('Phillip', 'Frond', 38),('Calvin', 'Fischoeder', 70);


create table employee(
id int not null,
last_name varchar(50) not null,
first_name varchar(50) not null,
middle_name carchar(50),
age int not null,
current_status carchar(250) not null default 'employed',
primary key (id)
)

drop table employee;

INSERT into employee (id, first_name, last_name, age) values (1, 'Dora', 'Smith', 58), (2, 'Harold', 'Finley', 29);

CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL , 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
 
 INSERT INTO cats(cat_id, name, breed, age) 
VALUES (1,'Ringo', 'Tabby', 4),
       (2,'Cindy', 'Maine Coon', 10),
       (3,'Dumbledore', 'Maine Coon', 11),
       (4,'Egg', 'Persian', 4),
       (5,'Misty', 'Tabby', 13),
       (6,'George Michael', 'Ragdoll', 9),
       (7,'Jackson', 'Sphynx', 7);

select cat_id, age from cats where cat_id = age;
select cat_id as id, name from cats;
select name as 'cat name', breed as 'kitty breed' from cats;

update cats set breed = 'shorthair' where breed = 'Tabby';

select* from cats;

update cats set name = 'Jack' where name = 'Jackson';
update cats set breed = 'British shorthair' where name = 'Ringo';
update cats set age = 12 where breed = 'Maine Coon';

Delete from cats where age = 4;
DELETE from cats where cat_id = age;
DELETE from cats ;

create table shirts(
shirt_id int not null primary key,
article vachar(60),
color varchar(60),
shirt_size char check (shirt_size in ('S', 'L', 'M', 'XL')),
last_worn int
)

insert into shirts(shirt_id, article, color, shirt_size, last_worn) values 
(1, 't-shirt', 'white', 'S', 10),
(2, 't-shirt', 'green', 'S', 200),
(3, 'polo shirt', 'black', 'M', 10),
(4, 'tank top', 'blue', 'S', 50),
(5, 't-shirt', 'pink', 'S', 0),
(6, 'polo shirt', 'red', 'M', 5),
(7, 'tank top', 'white', 'S', 200),
(8, 'tank top', 'blue', 'M', 15)

select * from shirts ;

insert into shirts values (9, 'polo shirt', 'purple', 'M', 50);

SELECT article, color from shirts;
SELECT article, color, shirt_size, last_worn from shirts where shirt_size = 'M';

update shirts set shirt_size = 'L' where article = 'polo shirt';
update shirts set last_worn = 0 where last_worn = 15;
UPDATE shirts set shirt_size = 'S', color = 'off white' where color = 'white'; 

delete from shirts where last_worn >= 200;
DELETE from shirts where article = 'tank top';

DELETE from shirts;
drop table shirts;

--source book_data.sql wäre der richtige befehl gewesen

CREATE TABLE books 
	(
		book_id INT NOT NULL,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (book_id, title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
(1, 'The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
(2, 'Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
(3, 'American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
(4, 'Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
(5, 'A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
(6, 'The Circle', 'Dave', 'Eggers', 2013, 26, 504),
(7, 'The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
(8, 'Just Kids', 'Patti', 'Smith', 2010, 55, 304),
(9, 'A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
(10, 'Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
(11,'What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
(12,"Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
(13, 'White Noise', 'Don', 'DeLillo', 1985, 49, 320),
(14, 'Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
(15, 'Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
(16, 'Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;

select author_fname ||' '|| author_lname as author from books;
--select author_fname, author_lname as last, concat (author_fname, ' ',author_lname ) as author from books;
select SUBSTRING(title, 1, 4) from books; 
--von 1 bis 4
select SUBSTRING(title, 4) from books; 
--von buchstabe 4 bis ende
select SUBSTRING(title, -2) from books; 
--vom letzten bis -2.ten Buchstaben
select substring ("Where I'm Calling From: Selected Stories", 1, 10);
select substring (title, 1, 10)as 'short title' from books;

select substring(title, 1, 10)||'...' as 'short title' from books;
--ersten zehn buchstaben folgend von ...
--The Namesa...

select replace ('Hello World', 'Hello', 'Bad');
select replace ('Hello World', 'l', '7');
select replace ('bread toast milk coffe', ' ', ' and ');

SELECT REPLACE (title, 'e', '3') from books;

select replace ((substring(title, 1, 10)||'...' ), 'e', '3')  as 'short title' from books;
--Th3 Nam3sa...
--Nors3 Myth...

select reverse('Hello World');

select reverse(replace ((substring(title, 1, 10)||'...' ), 'e', '3'))  as 'short reverse title' from books;
--...as3maN 3hT
--...htyM 3sroN

select reverse(SUBSTRING(title, 1, 10))  as 'short reverse title' from books;
--asemaN ehT
--htyM esroN

select (replace ((substring(title, 1, 10)||'...' ), 'e', '3') )||' '|| 
	(replace ((substring(title, 1, 10)||'...' ), 'e', '3'))  as 'short title' from books where author_fname= 'Neil';
--Nors3 Myth... Nors3 Myth...
--Am3rican G... Am3rican G...
--Coralin3... Coralin3...

select title, LENGTH(title) from books; 

select title, LENGTH(title) from books where author_fname like 'neil'; 

select title, UPPER(title) from books; 
select title, LOWER(title) from books; 


select upper((replace ((substring(title, 1, 10)||'...' ), 'e', '3') )||' '|| 
	(replace ((substring(title, 1, 10)||'...' ), 'e', '3')))  as 'short title' from books where author_fname= 'Neil';
--NORS3 MYTH... NORS3 MYTH...

select upper(reverse('Why does my cat look at me with such hatred?'));
--?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW


select title, replace (title, ' ', '->') from books;

select author_lname,  reverse(author_lname) from books;

select author_fname ||' '|| author_lname as 'full name' from books;

select substring(title , 1, 12) ||' was released in '|| released_year as 'info' from books;
--Interpreter  was released in 1996
--A Hologram f was released in 2012

select title, LENGTH (title) from books;
--Norse Mythology , 15

--SELECT
  -- CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
  -- CONCAT(author_lname, ',', author_fname) AS author,
  -- CONCAT(stock_quantity, ' in stock') AS quantity
--FROM books;

SELECT
(SUBSTRING(title, 1, 10 ))||'...'  AS 'short title',
author_fname ||' '|| author_lname as 'full name',
stock_quantity||' in stock.' AS 'quantity'
from books;
--A Hologram...Dave Eggers 154 in stock.

INSERT INTO books
    (book_id, title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES (17, '10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           (18, 'fake_book', 'Freida', 'Harris', 2001, 287, 428),
           (19,'Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
          
SELECT DISTINCT author_lname FROM books;
select DISTINCT author_fname ||' '|| author_lname as 'full name' from books;
SELECT author_lname FROM books ORDER BY author_lname desc;
-- order by default --> asc
SELECT title FROM books LIMIT 10;

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;


select title, author_fname from books WHERE author_fname LIKE '%da%'
-- %a% WILDCARD

select title from books where title like '%stor%';

-- %	Ein Ersatz für null oder mehr Zeichen
--  _	Ein Ersatz für ein einzelnes Zeichen
---   [ charlist ]	Sets und Zeichenbereiche anzupassen
---  [^ charlist ]
---      or
---   [! charlist ]	Spielen nur ein Zeichen, das nicht in den Klammern angegeben

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
--> Buch mit den meisten Seiten

select  title ||' - '|| released_year as 'summary' from books order by released_year desc limit 3;
select title , author_lname from books where author_lname like '% %';
SELECT title, released_year, stock_quantity from books order by stock_quantity limit 3;
SELECT title, author_lname from books order by author_lname, title;

SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
SELECT count(*)as 'anzahl bücher', author_lname From books group by author_lname ;

SELECT TRIM( '     test    ') AS Result;
--test

select max(pages) as 'max pages', title from books;
SELECT * FROM books WHERE pages = (SELECT Max(pages) FROM books); 
--subquery
SELECT author_fname, 
       author_lname, 
       Min(released_year) 
FROM   books 
GROUP  BY author_lname, 
          author_fname; 
         
select author_lname as 'Nachname', author_fname as 'Vorname', min(pages) as 'wenigste Seiten' from books group by author_fname, author_lname ;
SELECT author_fname ||' '|| author_lname as 'full name', max(pages) as 'meiste Seiten' from books group by author_fname, author_lname ;
SELECT SUM(pages) FROM books;

SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;

SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;

select count(*) from books;     
select count(*), released_year from books group by released_year ;    
select sum (stock_quantity) from books;
SELECT round(avg(released_year)) , author_fname, author_lname from books group by author_fname, author_lname ;
select max(pages), author_fname ||' '|| author_lname as 'full name'  from books;
select released_year, count(released_year), avg(pages) as 'avg pages' from books group by released_year ;

--char FIXED length --> vorgegeben und MUSS genauso lang sein
-- 0 bis 255

-- decimal(5,2) 
-- 5: total number of digits  (maximal number insgesamt)  max. 65
-- 2: digits after decimal (0 bis 30 möglich), muss KLEINER sein als total
-- Beispiel: 999,99

--float/double --> nicht genau wie decimal,floating bis 7 zahlen nach dem komma, double 15 zahlen nach dem Komma

-- DATE: YYYY-MM--DD (no time)
-- TIME: HH:MM:SS (no date)
--DATETIME:  YYYY-MM-DD HH:MM:SS

select current_timestamp as 'now';
SELECT current_time as 'now';
SELECT current_date as 'now';

CREATE TABLE people_2 (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
     
INSERT INTO people_2 (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
     
INSERT INTO people_2 (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
     
SELECT * FROM people_2;

SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

SELECT title FROM books WHERE title NOT LIKE 'W%';

SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;

SELECT title, released_year FROM books
WHERE released_year <= 2000;

SELECT * 
FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';

SELECT title, 
       author_lname, 
       released_year, 
       stock_quantity 
FROM   books 
WHERE  author_lname = 'Eggers' 
              || released_year > 2010 
OR     stock_quantity > 100;

SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);


select title, released_year, 
case 
when released_year > 2000 then 'Modern Lit'
else '20th Century Lit'
end as 'genre'
from books;


SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;

select title, released_year from books where released_year < 1980;
SELECT title, author_lname from books where author_lname = 'Eggers' or  author_lname ='Chabon';
SELECT title, author_lname, released_year  from books where author_lname = 'Lahiri' and released_year < 2000;

SELECT title, pages FROM books WHERE pages >= 100 && pages <=200;
SELECT title, pages from books where pages BETWEEN 100 and 200;

SELECT * from books where author_lname like 'C%' or author_lname like 'S%';
SELECT 
    title, 
    author_lname 
FROM books 
WHERE 
    SUBSTR(author_lname,1,1) = 'C' OR 
    SUBSTR(author_lname,1,1) = 'S';

SELECT title, author_lname,
CASE 
when title like '%stor%' then 'Short Stories'
when title like 'Just Kids' or title like 'a heartbreaking work' then 'Memoir'
else 'Novel'
end as 'Type'
from books;

SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE (COUNT(*)||' '||' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;

---------FROM ONE TO MANY-----------------------------
--primary key --> UNIQUE
--foreign key --> Verweis auf eine andere Tabelle innerhalb einer bestimmten Tabelle

create table customers(
id int primary key,
first_name varchar(60),
last_name varchar(60),
email varchar(100)
);

create table orders(
order_id int primary key,
order_date date,
amount dec(100, 2),
customer_id int, foreign key(customer_id) references customers (id)
);



INSERT INTO customers (id, first_name, last_name, email) 
VALUES (1,'Boy', 'George', 'george@gmail.com'),
       (2,'George', 'Michael', 'gm@gmail.com'),
       (3,'David', 'Bowie', 'david@gmail.com'),
       (4,'Blue', 'Steele', 'blue@gmail.com'),
       (5,'Bette', 'Davis', 'bette@aol.com');
      
       
INSERT INTO orders (order_id, order_date, amount, customer_id)
VALUES (1,'2016/02/10', 99.99, 1),
       (2,'2017/11/11', 35.50, 1),
       (3,'2014/12/12', 800.67, 2),
       (4,'2015/01/03', 12.50, 2),
       (5,'1999/04/11', 450.25, 5);

SELECT id FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;

SELECT * FROM orders WHERE customer_id =
        (
            SELECT id FROM customers
            WHERE last_name='George'
        );
--subquery
       
SELECT * FROM customers, orders;
--CROSS JOIN

SELECT first_name, last_name, order_date, amount
    FROM customers, orders 
        WHERE customers.id = orders.customer_id;

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;

    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;  
    
SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
--INNER JOIN (Schnittmenge)

SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;    
   
--!!!!
SELECT 
        first_name, 
        last_name,
        IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
        ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

--LEFT JOIN (Select everything from A, along with any matching records in B)
--RIGHT JOIN (Select everything from B, along with any matching records in A)

create table student(
id int primary key,
first_name varchar(60)
);


create table papers(
title varchar(100),
grade int,
student_id int, foreign key(student_id) references student(id)
);


INSERT INTO student (id, first_name) VALUES 
(1, 'Caleb'), (2,'Samantha'), (3,'Raj'), (4,'Carlos'), (5,'Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name, title, grade from student join papers on id = papers.student_id order by grade desc;
SELECT first_name, title, grade  from student left join papers on id = papers.student_id;
SELECT first_name, ifnull(title,0),  IFNULL(grade, 0)  from student left join papers on id = papers.student_id;
SELECT first_name, ifnull(avg(grade),0) as 'average' from student left join papers on id = papers.student_id group by first_name;

SELECT 
first_name, 
ifnull(avg(grade),0) as 'average',
case
when avg(grade) >= 68 then 'PASSING'
else 'FAILING'
end as 'passing_status'
from student left join papers on id = papers.student_id 
group by first_name
order by average desc;


---------Übungsblätter---------
--BLATT 1------

--CREATE DOMAIN T_Projektname varchar(30);
--create domain T_Abteilung char(5) check in ('AB_FI', 'AB_PR', 'AB_KT', 'AB_FD', 'AB_QS');
--create domain T_Telefon char(18);
---Aufgabe 3
create table Projektmanagement_1( 
Projektname varchar (30) primary key,
Projektsponsor varchar(5) check (Projektsponsor in ('AB_FI', 'AB_PR', 'AB_KT', 'AB_FD', 'AB_QS')),
Budget decimal(8,2) check (Budget > 0),
PSTart date,
PEnde date check (PEnde > PStart),
Projektleiter varchar(60),
Abteilung varchar(5) check (Abteilung in ('AB_FI', 'AB_PR', 'AB_KT', 'AB_FD', 'AB_QS')),
EMail varchar(70),
Telefonnummer char(18),
AnzahlMitarbeiter int check(AnzahlMitarbeiter >0)
);

--Aufgabe 4
insert into Projektmanagement_1 values ('PRJ_Car2Fit', 'AB_FD', 20000, '13.4.2018',null,  'Thomas Muster', 'AB_FD', null, 'T.Muster@Beispiel.de', 4);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES 
('PRJ_SaleStar', 'AB_FI', 33000, '2018-02-01', '2018-03-18', 'Kilian Meier', 'AB_FI', NULL, '+49 555 2747', 2);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES 
('PRJ_QualFirst', 'AB_QS', 45000, '2016-05-01', NULL, 'Frank Meier', 'AB_QS', 'F.Meier@Beispiel.de', '+49 555 6263', 8);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES 
('PRJ_ManCon', 'AB_KT', 55000, '2018-01-20', '2018-04-03', 'Thomas Muster', 'AB_FD', 'T.Muster@Beispiel.de', '+49 555 3221', 3);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES 
('PRJ_AmCom', 'AB_FD', 12500, '2016-12-13', '2018-01-15', 'Kilian Meier', 'AB_FI', 'K.Meier@Beispiel.de', NULL, 3);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES ( 'PRJ_FinForce', 'AB_FI',50000,  '2018-05-01',  NULL, 'Thomas Förster','AB_FD', NULL,   '+40 5552755',  NULL);
INSERT INTO PROJEKTMANAGeMENT_1 VALUES 
('PRJ_AmCom2', 'AB_FD', 25000, '2018-07-01','2018-09-01', 'Kilian Meier Hinterhof', 'AB_FI', 'K.Meier_Hinterhof@Beispiel.de',nuLL,4);

update Projektmanagement_1 set PStart ='2018-04-13' where Projektname like 'PRJ_Car2Fit';

--Blatt2------------

--Aufgabe 2
select Projektname, Budget, AnzahlMitarbeiter from Projektmanagement_1; 

--Aufgabe 3
SELECT distinct Projektleiter, Abteilung, EMail , Telefonnummer from Projektmanagement_1 group by Projektleiter ;

--Aufgabe 4
SELECT Projektname , 
Budget as 'Budget in €', 
AnzahlMitarbeiter as 'Mitarbeiter',
((Budget *0.2)+2500*AnzahlMitarbeiter) as Rückstellungen 
from Projektmanagement_1
order by Rückstellungen asc;

--Aufgabe 5
SELECT * from Projektmanagement_1 where PEnde is null;
SELECT sum(AnzahlMitarbeiter) from Projektmanagement_1 where PSTart<'2018-02-01' and (PEnde is null or PEnde >'2018-02-28');

--Blatt 3-----------

--Aufgabe 1
SELECT * from Projektmanagement_1 where Projektname ='PRJ_ManCon';

update Projektmanagement_1
set PEnde = '2018-07-15', AnzahlMitarbeiter = AnzahlMitarbeiter -1
where Projektname = 'PRJ_ManCon';

update Projektmanagement_1  set budget= Budget + 50000 where Projektname = 'PRJ_QualFirst';

--Aufgabe 2
update PROJEKTMANAGEMENT_1 set budget = budget + 15000, PEnde ='2018-10-01' where Projektname = 'PRJ_Car2Fit';
update Projektmanagement_1 set Projektleiter ='Kilian Meier Hinterhof', EMail = 'K-Meier_Hinterhof@Beispiel.de' where Projektleiter  = 'Kilian Meier';

--Aufgabe 3
update Projektmanagement_1 set Projektleiter = 'Thomas Förster', EMail = null where Projektleiter = 'Thomas Muster';
UPDATE Projektmanagement_1 set Budget = Budget - Budget * 0.05 where PEnde > '2018-12-31'or PEnde  is null;

--Aufgabe 4
update Projektmanagement_1 set budget = (budget *0.95), PEnde = '2018-08-03' where Projektname = 'PRJ_QualFirst';
UPDATE Projektmanagement_1 set Budget= (Budget + budget*0.1), AnzahlMitarbeiter = (AnzahlMitarbeiter +2), PEnde = '2018-12-31' where Projektname = 'PRJ_FinForce';

SELECT Projektname , 
Budget as 'Budget in €', 
AnzahlMitarbeiter as 'Mitarbeiter',
((Budget *0.2)+2200*AnzahlMitarbeiter) as Rückstellungen 
from Projektmanagement_1
order by Rückstellungen asc;

--Blatt 5

--Aufgabe 1

CREATE table Projektleiter_1(
Projektleiterkuerzel varchar(5) primary key,
Vorname varchar(30),
Nachname varchar(30),
Abteilung varchar(5) check (Abteilung in ('AB_FI', 'AB_PR', 'AB_KT', 'AB_FD', 'AB_QS')),
EMail varchar(70),
Telefonnummer char(18)
);


------AUFGABENSAMMLUNG----------
--2.4
create table Schueler_0(
Nachname varchar(30),
Vorname varchar(30),
Rufname varchar(30),
Geschlecht varchar(1),
Konfession varchar(2),
Klasse int,
Bemerkung varchar(250)
);

--2.5
insert into Schueler_0 (Nachname, Vorname, Rufname, Geschlecht, Konfession, Klasse, Bemerkung)
values
('Schmitz', 'Jonas', null, 'm', 'ob', 85, 'Diabetiker'),
('Hagenkötter', 'Heidemarie', 'Heidi', 'w', null, 31, null),
('Scholl', 'Cem', null, 'm', 'is', 32, null);

insert into Schueler_0 (Nachname, Vorname, Rufname, Geschlecht, Konfession, Klasse, Bemerkung)
values
('Meier', 'Klaus', null, 'm', 'rk', 85, 'Laktoseintolerant'),
('Mueller', 'Annalena', 'Anna', 'w', 'xx', 31, 'Nussallergie'),
('Hansklein', 'Friedrich', null, 'm', 'ev', 32, null);

--2.6
SELECT * from Schueler_0 ;

--2.7
SELECT Vorname, Nachname, Konfession from Schueler_0 ;

--2.8
SELECT Vorname, Nachname, Klasse from Schueler_0 where Konfession = 'rk';

--2.9
SELECT Vorname, Nachname, Bemerkung from Schueler_0 where Nachname > 'Neuhaus';

--2.10
SELECT Rufname, Nachname, Vorname from Schueler_0 where Klasse < 20;

--5.1
create table Geburtstag(
Nachname varchar(30),
Vorname varchar(30),
Rufname char(30) constraint PK_eig primary key
);
--PK_eig primary key veränderbarer Primärschlüssel
drop table Geburtstag;

--5.3
create domain T_Name varchar(30);

--5.6
create table Schueler_1(
Nachname T_Name constraint PK_eig primary key,
Vorname T_Name constraint PK_eig primary key,
Rufname T_Name not null constraint UK_01 unique,
Geschlecht char(1) check in ('m', 'w', 'd'),
Konfession char(2) check in ('rk', 'ek', 'is', 'ob', 'xx'),
Klasse char(3) not null constraint UK_01 unique,
Geburtstag date check (current_date - 6 *365 >= Geburtstag),
Notiz varchar(255)
);

