create table if not exists judete(
	id int primary key,
    nume varchar(255) unique,
    cod varchar(2)
);
insert into judete set cod='CT';

alter table judete add constraint cod_unic unique(cod);
update judete set cod='BV' where id=5;
update judete set cod='TM' where id=3;
update judete set cod='CJ' where id=4;
update judete set cod='B' where id=6;
select * from judete;
insert into judete set cod='CV';

##Modificare pentru auto_incrementare
alter table judete modify id int auto_increment;
insert into judete set nume = 'Iasi', cod = 'IS';