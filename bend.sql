use master;
go
drop database if exists bend;
go
create database bend;
go
use bend;

create table bend(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
kategorija varchar(50) not null,
?lanovi varchar(100) not null,
);

create table turneja(
sifra int not null primary key identity(1,1),
svirka varchar(100) not null,
datumpocetka datetime,
datumzavršetka datetime
);



alter table turneja add foreign key (sifra) references bend(sifra);

select * from bend;
select * from turneja;
