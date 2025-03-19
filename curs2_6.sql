create database if not exists online_store;
use online_store;

create table if not exists computer_parts(
	id int primary key auto_increment,
    cod varchar(7),
    tipul varchar(15) default 'Electronic',
    nume varchar(31) unique not null,
    pret decimal(7,2)
);
select * from computer_parts;
insert into computer_parts set cod='GPU', tipul='componenta pc', nume='RTX 5090', pret = 10000.99;
insert into computer_parts set cod='GPU', tipul='componenta pc', nume='RTX 5080', pret = 9599.99;
select * from computer_parts;
