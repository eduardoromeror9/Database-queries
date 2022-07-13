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

--* ver la descripcion de una tabla en detalle
show full columns from nombreTabla;


--* Crear tablas ejemplos
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

create table clients (
    client_id integer unsigned primary key auto_increment,
    `name` varchar(50) not null,
    email varchar(100) not null unique,
    birthdate datetime,
    gender ENUM('M', 'F', 'ND') not null,
    active tinyint(1) not null default 1,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp on update current_timestamp
);

create table if not exists operations (
    operation_id integer unsigned primary key auto_increment,
    book_id integer unsigned not null,
    client_id integer unsigned not null,
    type ENUM('vendido', 'alquilado', 'devuelto') not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp on update current_timestamp,
    finished tinyint(1) not null
);

--* Insertar datos en una tabla ejemplos
insert into authors(author_id, name, nationality)
values(null, 'Romulo Gallegos', 'VEN');

insert into authors(name, nationality)
values('Salvador Garmendia', 'VEN');

inser into authors
values(null, 'Arturo U Pietri', 'VEN');

insert into authors(name, nationality)
values('Julio Cortazar', 'ARG'), 
('Isabel Allende', 'CHI'),
('Octavio Paz', 'MEX'),
('Juan Rulfo','MEX');



insert into authors(name, nationality)
values('Henning Mankel','SWE'),
('Jaideva Goswami','USA'),
('John Foreman','USA'),
('Stephen Hawking','USA'),
('Stephen Dubner','USA'),
('Edward Said','USA'),
('Vladimir Vapnik','RUS'),
('V P Menon','IND'),
('Leonard Mlodinow','USA'),
('Frank Shih','JAP'),
('Maria Konnikova','RUS'),
('Sebastian Gutierrez','ESP'),
('Kurt Vonnegut','USA'),
('Cedric Villani','FRA'),
('Gerald Sussman','USA'),
('Abraham Eraly','IND'),
('Frank Kafka','AUT'),
('John Pratt','USA'),
('Robert Nisbet','USA'),
('H. G. Wells',"ENG"),
('Werner Heisenberg','DEU'),
('Terence Tao',"AUS"),
('Drew Conway',"USA")
