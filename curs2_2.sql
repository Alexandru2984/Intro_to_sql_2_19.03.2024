create database personal;
use personal;
drop table if exists date_personale;
create table if not exists date_personale(
	id int Primary key auto_increment,
    prenume varchar(255),
    nume varchar(255), 
    varsta int check (varsta > 5 and varsta <150),
    pozitie varchar(255) default 'Atacant' check(pozitie in ('Atacant', 'Mijlocas')),
    cnp bigint
       
    
);

insert into date_personale set prenume='Ion', nume='Ionescu';
select * from date_personale;
insert into date_personale set prenume='Alex', nume='Alexandrescu', varsta=18;
update date_personale set varsta = 12 where id = 1;
insert into date_personale set prenume='George', nume='Georgescu', varsta=18;
insert into date_personale set prenume='Florin', nume='Florinescu', varsta=18;
insert into date_personale set prenume='Mihai', nume='Mihailescu', varsta=18;
select * from date_personale;
select * from date_personale order by varsta;
select * from date_personale order by nume;
select * from date_personale where varsta > 15;
select * from date_personale where varsta is not null;
select * from date_personale where varsta is null;
insert date_personale set prenume = 'Cornel', nume = 'Cornescu';
insert date_personale set prenume = 'Cornel', nume = 'Cornescu', pozitie = 'Mijlocas';

use personal;
drop table if exists people;
create table if not exists personal.people(
	id int primary key auto_increment,
	first_name Varchar(255),
    last_name varchar(255)
);
select * from people;
insert people set first_name = 'Cornel', last_name = 'Cornescu';

alter table people add column age int;
update people set age = 25 where id = 1;

insert into people set first_name = 'Donald', last_name = 'Duck', age=30 ;
insert into people set first_name = 'Mouse', last_name = 'Mickey', age=30;
insert into people set first_name = 'Duck', last_name = 'Duffy', age=30 ;
insert into people set first_name = 'Mouse', last_name = 'Minnie', age=20;

alter table people add column varsta int;
alter table people add column retea varchar(255) default 'Disney';
alter table people add column culoare varchar(255),add dimensiune int;
