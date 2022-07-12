--* Ver las bases todas las bases de datos que se tienen en el sistema
show databases;

--* seleccionar una BD
use nombreDB;

--* mostrar las tablas de una BD
show tables;

--* mostar que BD esta seleccionada
select database();

--* Crear una BD
create database nombreDB;


--* Eliminar una base de datos
drop database nombreDB;

--* Eliminar una tabla
drop table nombreTabla;


--* Crear una BD si no existe
create database if not exists nombreDB;

--* ver contenido de una tabla
select * from nombreTabla;

--* mostar los warnings de una BD
show warnings;

--* mostrar la informacion de una tabla
show table status from nombreDB;

--* mostrar los tipos de datos de una tabla
show columns from nombreTabla;

--* ver la informacion de una tabla
describe nombreTabla;
desc nombreTabla;

--* Crear una tabla ejemplos
create table if not exists books (
    book_id int unsigned primary key auto_increment,
    author_id int unsigned,
    title varchar(100) not null,
    year int unsigned not null default 1900,
    language varchar(2) not null default 'es' comment 'iso 639-1 language',
    cover_url varchar(500),
    price double(6, 2) not null default 10,
    sellable tinyint(1) default 1,
    copies int not null default 1,
    description text
);

create table if not exists authors (
    author_id integer unsigned primary key auto_increment,
    name varchar(100) not null,
    nationality varchar(3)
);