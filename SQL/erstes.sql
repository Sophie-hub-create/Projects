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


