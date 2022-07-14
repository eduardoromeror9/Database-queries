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