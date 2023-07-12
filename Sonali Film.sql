create database films_database;
use films_database;

create database artis;
create table artis (artid int primary key, artifirstname varchar(255),artilastname varchar(255),artigender varchar(255),artifees int);
insert into artis values (101, 'akashay', 'kumar','m',5000000);
insert into artis values (102, 'aamir', 'khan','m',350000);
insert into artis values (103, 'neha', 'kakkar','f',6780000);
insert into artis values (104, 'sunny', 'deol','m',4500000);
insert into artis values (105, 'asha', 'bhosle','f',67000000);

select * from artis;

create database producerr
create table produce( produceid int primary key ,producename varchar(255),producemobile int,produceaddress varchar(255));
insert into produce values (201,'karan johar',78965,'delhi');
insert into produce values (202,'aditya chopra',99887,'u.p');
insert into produce values (203,'kishore lulla',90876,'delhi');
insert into produce values (204,'anil ambani',88657,'puna');
insert into produce values (205,'ronnie screwvala',76543,'mumbai');

select * from produce

create database films;
create table films(filid int,fil_title varchar(255),fil_year int,fil_lang varchar(255),fil_rel_date date,fil_country varchar(255));
insert into films values (1,'titanic',2017,'english','2019.09.12','uk');
insert into films values (2,'carry on jatta',2016,'punjabi','2017.12.07','jalandhar');
insert into films values (3,'renton',2018,'english','2020.05.12','uk');
insert into films values (4,'pk',2015,'hindi','2016.07.2','uk');
insert into films values (5,'ishq',2016,'hindi','2018.10.1','uk');

select * from films

create database castings
create table castings(cas_id int, artid int,fil_id int, part char(255));
insert into castings values (501,101,1,'actor');
insert into castings values(502,102,2,'guest');
insert into castings values (503,103,3,'actress');
insert into castings values (504,104,4,'actor');
insert into castings values (505,105,5,'guest');
select * from castings

create database reviewss
create table revi (revi_id int, fil_id int, revi_name varchar(255),stars decimal(2,1));
insert into revi values (51,1,'simon wright',2.5);
insert into revi values (52,2,'alec shaw',3.5)
insert into revi values (53,3,'sandeep ganotra',4.5)
insert into revi values (54,4,'neal sharma',4.0)
insert into revi values (55,5,'alec ambani',2.5)
select* from revi

/* find the name of all films whose produce is "anil ambani" */
select produceid=204 from produce where producename="anil ambani"

/*film releasing on particular date */
select fil_title from films where fil_rel_date='2018.10.1';

\\Display all artis who accepted in a films between 2016 and 2018.\\
select artifirstname from artis where artid in
(select artid from films where fil_rel_date between "2016.07.2" and "2020.05.12")


/* update the stars of films whose producer is'anil ambani'*/
update revi set stars=2.2 where fil_id=1 ;



display the name of films with the stars received and sort the result on the basis of stars.
select films.fil_title, revi.stars from films, revi where films. filid=revi.fil_id order by stars ;


films and casting full outer joins
select * from films left join castings
on films.filid = castings.fil_id
union all
select * from films right join castings on films.filid = castings.fil_id;




