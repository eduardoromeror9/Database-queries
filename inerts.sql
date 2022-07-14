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

--* Insertar en la tabla clients
INSERT INTO `clients`(name, email, birthdate, gender, active) 
VALUES ('Maria Dolores Gomez','Maria Dolores.95983222J@random.names','1971-06-06','F',1),
('Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1),
('Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F',1),
('Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1);


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