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

