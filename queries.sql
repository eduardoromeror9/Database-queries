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

--* ver la informacion de una forma mas clara
--* para ver la informacion de un registro en especifico (\G)
select * from clients where client_id = 4\G;

