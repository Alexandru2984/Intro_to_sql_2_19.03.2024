show databases;
##Creare DB
create database if not exists vremea; 

## Folosire

use vremea;
##Creare tabel
create table if not exists temperaturi(
	id INT Primary key auto_increment, grade smallint
); 
##Select toate
select * from temperaturi;

##Select mai amanuntit
select grade from temperaturi;
select grade, id from temperaturi;

insert into temperaturi set id = 1, grade = 6;
insert into temperaturi set id = 2, grade = 7;
select * from temperaturi;
insert into temperaturi set id = 5, grade = 17;
insert into temperaturi set grade = 27;
insert into temperaturi set id=7;
create table if not exists masurari(
	id INT Primary key auto_increment, grade smallint not null
); 
select * from masurari;
insert into masurari set id = 1, grade = 10;
insert into masurari id = 2;

drop table if exists masurari;
create table if not exists masurari(
	id INT Primary key auto_increment, grade smallint not null default 0
); 
insert into masurari set id = 1, grade = 10;
insert into masurari set id = 2;
update masurari set grade=3 where id=2;

