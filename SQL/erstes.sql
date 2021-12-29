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


-------Blatt 5------------------

--Aufgabe 1
CREATE table Projektleiter_1(
Projektleiterkuerzel varchar(5) primary key,
Vorname varchar(30),
Nachname varchar(30),
EMail varchar(70),
Telefonnummer char(18),
Abteilung varchar(5) check (Abteilung in ('AB_FI', 'AB_PR', 'AB_KT', 'AB_FD', 'AB_QS')), foreign key(Abteilung) references Projektmanagement_1(Projektsponsor)
);

drop table Projektleiter_1 ;

insert into Projektleiter_1(Projektleiterkuerzel, Vorname, Nachname, Abteilung, EMail, Telefonnummer)
values
(null, 'Thomas', 'Förster', 'AB_FD', null, null),
(null, 'Kilian', 'Meier Hinterhof', 'AB_FI', 'K-Meier_Hinterhof@Beispiel.de', '+49 555 2747'),
(null, 'Frank', 'Meier', 'AB_QS', 'F.Meier@Beispiel.de', '+49 555 6263'),
(null, 'Thomas', 'Förster', 'AB_KT', null, null),
(null, 'Kilian', 'Meier Hinterhof', 'AB_FD', 'K-Meier_Hinterhof@Beispiel.de', '+49 555 2747');

alter table Projektmanagement_1 drop Telefonnummer;

--Aufgabe 2
Select Projektname,(Vorname||' '||Nachname) as 'Projektleiter', Budget, AnzahlMitarbeiter from Projektmanagement_1, Projektleiter_1 
on Projektmanagement_1.Projektsponsor = Projektleiter_1.Abteilung
group by Projektname
order by Budget;

--Aufgabe 3
alter table Projektleiter_1 alter Telefonnummer char(18) check(Telefonnummer similar to '+49%')

--Aufgabe 4
alter table Projektleiter_1 add Raum char(8) check (Raum similar to '([ABEGZ]{1}\-[0-1][0-9].*{3})');
update Projektleiter_1  set Raum....

------Blatt 6------------

--Aufgabe 1
create table Verein(
id int primary key,
Name varchar(30),
Vorname varchar(30),
Geburtsdatum date,
Postanschrift varchar(80),
Telefonnummer varchar(20),
EMail varchar(60),
Betrittsjahr int, 
AnzahlBienenvölker int
);
drop table Verein;

INSERT INTO Verein VALUES (1,'Meier', 'Thomas','02.01.1955','Baum Str. 5,
52557 Domstadt', '+4945557372','T.Meier@mail.de','01.01.2005', 2);

insert into verein (id, Name, Vorname, Geburtsdatum, Postanschrift, Telefonnummer, EMail, Betrittsjahr, AnzahlBienenvölker)
values
(2,'Walter', 'Imke', '03.05.1950', 'Mustermannstr. 18, 123456 Regensburg', '+4932984745', 'I.Walter@Beispiel.de', '01.01.2003', 4 ),
(3,'Jacobi', 'Wilhelm', '08.04.1975', 'Gagarinstr. 6, 37545 Gera', '+499876543', 'W.Jacobi@email.de', '01.01.2008', 3);

select * from verein order by Betrittsjahr;

alter table Verein add Beratung varchar(20) check (Beratung in ('ja', 'nein', 'nur telefonisch'));

update Verein set EMail = Name||'.'||(substring(Vorname, 1, 1 ))||'@imkerclub.hive';

--Aufgabe 2
create table Events(
EventID int primary key,
EventName varchar(30) not null,
Beschreibung varchar(90),
Veranstalter int references Verein(id),
DatumDerVeranstaltung date not null
);

select 
DatumDerVeranstaltung||' '||EventName||': '||Beschreibung||'-'||Veranstalter||'.'||Postanschrift as 'Events' 
from Events, Verein 
on Events.Veranstalter = Verein.id;

alter table Events add Schulung boolean;
alter table Events add Dozent  boolean;

drop table Events;

UPDATE events SET Schulung = TRUE WHERE Beschreibung like
'<Schulung> ';
update events set Dozent = true where Beschreibung like '<Schulung>'; 

UPDATE events SET Beschreibung = REPLACE(Beschreibung, '<Schulung>', '' );

select
case 
when Schulung =true  or Dozent=true
then DatumDerVeranstaltung||' '||EventName||': '||Beschreibung||'<Schulung>'||'-'||Veranstalter||'.'||Postanschrift
ELSE 
DatumDerVeranstaltung||' '||EventName||': '||Beschreibung||'-'||Veranstalter||'.'||Postanschrift
end as 'Events'
from Events, Verein 
on Events.Veranstalter = Verein.id;

--Aufgabe 3
create table Anmeldungen(
AnmeldeId int primary key references Event(EventID),
Name varchar(60),
Vorname varchar(60),
EMail varchar(60),
Geburtsdatum date
);
drop table Anmeldungen;

--??????????-----------------
select Name||', '||Vorname||
CASE 
when datediff (year, date geburtsdatum, date current_date)> 15
then 'voller Preis'
else 'halberPreis'
end as 'Preis'
from Anmeldungen;

Select Eventname, sum(AnmeldeID) as 'Teilnehmerzahl'
from Events, Anmeldungen
on Anmeldungen.AnmeldeID = Events.EventID 
order by Teilnehmerzahl desc;

alter table Anmeldungen add Mitglied varchar(10) check (Mitglied in('ja', 'nein'));
alter table Anmeldungen add ImkerNummer int;

alter table Verein add ImkerNummer int;

INSERT INTO Verein
(ImkerNummer)
SELECT ImkerNummer
FROM Anmeldungen;

--Lagerbestand

create table Lagerbestand_2(
ProduktID int primary key,
Hersteller varchar(50) check(hersteller in('asus', 'intel', 'amd', 'nvidia', 'msi')),
Kategorie varchar(50) check (Kategorie in ('Mainboard', 'Grafikkarte', 'Prozessor')),
Anzahl int not null,
Preis decimal(8,2),
Lieferdatum date,
Bestelldatum date check(Bestelldatum < Lieferdatum)
);

INSERT INTO Lagerbestand_2 VALUES (1, 'asus', 'Mainboard', 4, 245.00, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_2 VALUES (2, 'asus', 'Mainboard', 4, 300.00, '2018-04-23', '2018-02-10');
INSERT INTO Lagerbestand_2 VALUES (3, 'intel', 'Mainboard', 4, 299.99, '2018-12-22', '2018-12-05');
INSERT INTO Lagerbestand_2 VALUES (4, 'intel', 'Prozessor', 4, 145.00, '2019-01-02', '2018-12-20');
INSERT INTO Lagerbestand_2 VALUES (5, 'intel', 'Prozessor', 4, 499.00, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_2 VALUES (6, 'intel', 'Grafikkarte', 4, 899.99, '2019-02-22', '2019-01-05');
INSERT INTO Lagerbestand_2 VALUES (7, 'intel', 'Grafikkarte', 4, 249.50, '2017-07-30', '2017-07-20');
INSERT INTO Lagerbestand_2 VALUES (8, 'amd', 'Grafikkarte', 2, 149.50, '2019-01-30', '2019-01-20');

select Kategorie,Hersteller, Preis, (Preis-Preis*0.19) as 'Nettopreis', (Preis*0.19) as 'MwSt.' from Lagerbestand_2 order by Kategorie ;
select Kategorie, Hersteller, cast(Lieferdatum-Bestelldatum as varchar(5)) ||' Tage' as Lieferzeit from Lagerbestand_2;
select Kategorie, Preis, Lieferdatum from Lagerbestand_2 where Kategorie = 'Grafikkarte' and Hersteller ='amd';
update Lagerbestand_2 set preis = Preis +Preis*0.5;
update Lagerbestand_2 set anzahl = anzahl-1 where Kategorie = 'Prozessor' and Hersteller = 'intel';
update Lagerbestand_2 set Lieferdatum = iif(Lieferdatum -2 > Bestelldatum, Lieferdatum, Bestelldatum) where Kategorie = 'Mainboard' and Hersteller ='asus';
update Lagerbestand_2 set anzahl= anzahl +1 where Kategorie = 'Grafikkarte';

--Helden_1
create table Helden_1(
charID int primary key,
Name varchar (60) not null,
Spielername varchar (60),
Charlevel int check (Charlevel between 1 and 99),
Gesinnung char(1) check(Gesinnung in ('g','n','b')),
Experiance int,
Staerke int,
Gewandtheit int,
Geisteskraft int,
Zauberkraft int,
Heimlichkeit int,
Angriffskraft int,
Rechtehand varchar(60),
Linkehand varchar (60),
Kleidung varchar (60) check(Kleidung in('Robe','Lederruestung', 'Kettenhemd','Plattenruestung')),
Rucksack varchar (255),
Lebenspunkte int check(Lebenspunkte BETWEEN -10 and 100),
Mana int
);

drop table Helden_1 ;


INSERT INTO HELDEN_1 (CHARID, NAME, CHARLEVEL, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ANGRIFFSKRAFT, RECHTEHAND, LINKEHAND, KLEIDUNG, LEBENSPUNKTE)
VALUES(1,'Krall', 1, 12, 8, 4, 10, 'Langschwert', 'Schild', 'Kettenhemd', 100);
INSERT INTO HELDEN_1 (CHARID, NAME, SPIELERNAME,CHARLEVEL, EXPERIANCE, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ZAUBERKRAFT, HEIMLICHKEIT, RECHTEHAND, KLEIDUNG,RUCKSACK, LEBENSPUNKTE, MANA)
VALUES(2,'Tarina', 'Karolin', 3, 4300, 3, 11,16,13, 11, 'Zauberschwert', 'Lederruestung', 'Seil, Trinkschlauch, Schlafrolle', 66,20);
INSERT INTO HELDEN_1 (CHARID, name, SPIELERNAME, CHARLEVEL, GESINNUNG, EXPERIANCE, STAERKE, GEWANDTHEIT, GEISTESKRAFT, ANGRIFFSKRAFT, ZAUBERKRAFT,
HEIMLICHKEIT, RECHTEHAND, LINKEHAND, KLEIDUNG, RUCKSACK, LEBENSPUNKTE, MANA)
VALUES (3, 'Torin', 'Orin', 5, 'b', 50, 20, 60, 25, 40, 45, 35, 'Axt', 'Boblinbogen', 'Plattenruestung', 'Tarnmantel, Pfeile', 99, 30);

SELECT Name, Charlevel, Spielername from Helden_1 ;
Select Name, Lebenspunkte, Gewandtheit from Helden_1 order by Gewandtheit ;
SELECT NAME, ROUND(ANGRIFFSKRAFT * rand()*10) AS Angriff FROM HELDEN_1 WHERE NAME = 'Krall';
update Helden_1 set Gesinnung = 'n' where Gesinnung is null;
select*from Helden_1 ;
update Helden_1 set Experiance = iif(Experiance is null, 7500, experiance+7500);
update Helden_1 set Charlevel = round(experiance/1000);

--IIF (<condition>, ResultT, ResultF)
--select iif( sex = 'M', 'Sir', 'Madam' ) from Customers

UPDATE HELDEN_1 
   SET  LEBENSPUNKTE = iif(LEBENSPUNKTE > 42, Lebenspunkte - 47, -5) 
WHERE GESINNUNG = 'b';

Select * from Helden_1 where Rucksack like '%Seil%';
update Helden_1 set Rucksack = 'Trinkschlauch, Schlafrolle' where Spielername = 'Karolin';

--so sollte es
UPDATE HELDEN_1 
SET RUCKSACK =  CASE 
   WHEN Rucksack similar TO 'Seil' THEN ''   --Nur Seil
   WHEN Rucksack SIMILAR TO 'Seil%' THEN REPLACE(RUCKSACK,'Seil,','') --Seil am Anfang
   WHEN Rucksack SIMILAR TO '%Seil' THEN REPLACE(RUCKSACK,', Seil','') --Seil am Ende
   WHEN Rucksack SIMILAR TO '%Seil%' THEN Replace(Rucksack,'Seil,','')  -- Seil in der Mitte
   end
WHERE RUCKSACK SIMILAR TO '%Seil%';

update Helden_1 set Charlevel =Charlevel +2 where Spielername = 'Orin';
select * from Helden_1;
select Charlevel as 'Level',Gesinnung,  count(Gesinnung)as 'Anzahl' from Helden_1 group by charlevel;

alter table Helden_1 drop Rucksack;
alter table Helden_1 alter column Experiance to Erfahrungswerte;

create table Rucksack(
HeldID int references Helden_1(charID),
Gegenstandsbezeichnung varchar(255),
Anzahl int check (Anzahl > 0),
Gewicht dec(8,2) check(Gewicht >= 0)
);

drop table Rucksack;
select * from Helden_1;


insert into Rucksack ('HeldID', 'Gegenstandsbezeichnung', 'Anzahl', 'Gewicht')
values
(1, 'Tarnmantel', 1, 0.5),
(1, 'Trinkschlauch', 2, 0.2),
(2, 'Schlafrolle', 3, 0.4),
(2, 'Pfeile', 22, 0.1),
(3, 'Seil', 4, 0.2),
(3, 'Pfeile', 11, 0.1);

select Name, Gegenstandsbezeichnung, Anzahl, Gewicht from Helden_1 , Rucksack on Helden_1.charID = Rucksack.HeldID ;

--KFZ Werkstatt

CREATE TABLE Kundentermine (
 KName varchar(30),
 KVorname varchar(30),
 KGeburtsdatum date,
 KTelefon varchar(15),
 KStrasse varchar(30),
 KHausnummer varchar(5),
 kOrt varchar(30),
 KPlz char(5),
 Dauer int,
 Termin time,
 Datum date,
 Auftrag varchar(15) CHECK (value IN ('Reparatur','Service','Reifenwechsel','Tuev','Sonstiges'));
)



--Autovermietung

create table Autovermietung(
Fahrzeugnummer char(17),
Mietzaehler int primary key,
Automarke varchar(30) not null, 
Modell varchar(30),
Kennzeichen varchar(10) not null,
KMStand int check(KMStand between 0 and 200000),
GemietetVon date,
GemietetBis date, 
--check(GemietetBis >= GemietetVon),
Mieter varchar(60),
MieterTelefon char(15),
MieterGeburtsdatum date  check (current_date - 21*365 >= MieterGeburtsdatum or current_date - 99*365 <=MieterGeburtsdatum)
);

drop table Autovermietung;

INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 1, 'BMW', '328i', 'BO-DO 4711', 6000, '3.3.2017', '5.3.2017', 'Frank Meier', '+491774563534',     '3.6.1966');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 2, 'BMW', '328i', 'BO-DO 4711', 6600, '11.2.2017', '18.2.2017', 'Tina Winter', '+49173562727',     '6.11.1972');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 3, 'BMW', '328i', 'BO-DO 4711', 6850, '16.3.2017', '22.3.2017', 'Oliver Klein', '+49172632345',     '23.4.1947');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 5, 'BMW', '328i', 'BO-DO 4711', 7302, '24.3.2017', '29.3.2017', 'Mika Marten', '+4917983392',     '13.3.1939');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 6, 'BMW', '328i', 'BO-DO 4711', 7566, '30.1.2017', '8.2.2017', 'Tom Walter', '+49176332472',     '25.4.1984');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 7, 'BMW', '328i', 'BO-DO 4711', 8033, '4.4.2017', '5.4.2017', 'Seth Brinkman', '+491723453',     '9.7.1976');
INSERT INTO AUTOVERMIETUNG VALUES ('WDA2300123F140031', 8, 'BMW', '328i', 'BO-DO 4711', 8120, '7.4.2017',null, 'Lara Thoma', '+4917533453534',     '12.12.1969');
INSERT INTO AUTOVERMIETUNG VALUES ('WF00355237A002345', 4, 'OPEL', 'Astra', 'BO-BO 1233', 3310, '4.3.2017', '7.3.2017', 'Tom Walter', '+49176332472',     '25.4.1984');
INSERT INTO AUTOVERMIETUNG VALUES ('WF00355237A002345', 9, 'OPEL', 'Astra', 'BO-BO 1233', 3610, '11.3.2017', '17.3.2017', 'Martha Klein', '+491792342534',     '11.8.1978');
INSERT INTO AUTOVERMIETUNG VALUES ('WF00355237A002345', 10, 'OPEL', 'Astra', 'BO-BO 1233', 4217, '22.3.2017', null, 'Thorsten Karter', '+4917324523455',     '13.2.1966');

select sum((GemietetBis-GemietetVon) *45) as 'Abrechnung Mietzeitraum' from Autovermietung group by Mietzaehler;

select Mieter, GemietetVon , GemietetBis 
from Autovermietung 
where Kennzeichen = 'BO-DO 4711' 
and GemietetVon <= '26.03.2017' and GemietetVon >= '01.03.2017'
or GemietetBis >= '26.3.2017' and GemietetVon <='01.04.2017';

UPDATE AUTOVERMIETUNG SET GEMIETETBIS = '12.4.2018' WHERE GEMIETETBIS IS NULL AND FAHRZEUGNUMMER = 'WDA2300123F140031';
insert into Autovermietung values ('WDA2300123F140031', 11, 'BMW', '328i', 'BO-DO 4711', 8450, '15.4.2018', null, 'Martin Müller', '+49177533234234', '4.3.1977');
select * from Autovermietung where Modell = 'Astra';
update Autovermietung set GemietetBis = '10.4.2018' where GemietetBis is null and Fahrzeugnummer = 'WF00355237A002345';
insert into Autovermietung values ('WF00355237A002345', 12, 'OPEL', 'Astra', 'BO-BO 1233', 6332, '13.4.2018', null, 'Timo Schulze','17.7.1955', '+491732234244');
update Autovermietung set MieterTelefon = '+491732234244', MieterGeburtsdatum = '17.7.1955' where Mieter = 'Timo Schulze';

--geht zwar nicht, sollte aber so
SELECT KENNZEICHEN, EXTRACT (MONTH FROM Gemietetvon) AS 'Monat',count(Kennzeichen) AS 'Anzahl' FROM AUTOVERMIETUNG GROUP BY Kennzeichen;

--Autokunden_0

create table Autokunden_0(
ID int primary key references Autovermietung (Mietzaehler),
Name varchar(60),
--Vorname varchar(60),
Geburtsdatum date,
Telefonnummer char(15)
) ;

drop table Autokunden_0 ;

insert into Autokunden_0 
(ID, Name, Geburtsdatum, Telefonnummer)
select
Mietzaehler, Mieter, MieterGeburtsdatum, Mietertelefon
from Autovermietung ;

alter table Autovermietung drop MieterTelefon; --ACHTUNG!! löschen geht immer nur einzeln jede Spalte EINZELN

---AUCH das geht wieder nicht in FIREBIRD
ALTER TABLE Autovermietung
change Mietzaehler int primary key
REFERENCES Autokunden_0(ID);

create table Fahrzeuge_1(
FahrzeugID int primary key references Autovermietung(Mietzaehler),
Fahrzeugnummer char(17),
Automarke varchar(30) not null, 
Modell varchar(30),
Kennzeichen varchar(10) not null,
KMStand int check(KMStand between 0 and 200000)
);
drop table Fahrzeuge_1 ;

insert into Fahrzeuge_1 (Fahrzeugnummer, Automarke, Modell, Kennzeichen)
select
distinct Fahrzeugnummer, Automarke, Modell, Kennzeichen
from Autovermietung ;

alter table Fahrzeuge_1 add KMEndstand int;

alter table Autovermietung drop Kennzeichen;

select gemietetvon, Kennzeichen, Name 
from Autovermietung, Autokunden_0 , Fahrzeuge_1 
where autovermietung.Mietzaehler = fahrzeuge_1.FahrzeugID and autovermietung.Mietzaehler = Autokunden_0.ID;

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

