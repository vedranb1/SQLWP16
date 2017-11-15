drop database if exists edunovawp16;
create database edunovawp16;

use edunovawp16;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
spol boolean,
datumrodenja datetime not null,
nadimak varchar(50)
);

create table kontakt(
sifra int not null primary key auto_increment,
osoba int not null,
telefon varchar(20)
);

alter table osoba add foreign key(osoba) references osoba(kontakt);
