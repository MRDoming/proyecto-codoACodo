CREATE DATABASE IF NOT EXISTS CaC;

USE CaC
	
CREATE TABLE IF NOT EXISTS usuarios (
	id int not null PRIMARY KEY, 
	nombre varchar(40) not null,
	apellido varchar(40) not null,
	edad int not null,
	fecha timestamp not null default current_timestamp,
	provincia varchar(30) not null
);
	
	
insert into usuarios (nombre, apellido, edad, provincia) values 
	('Pedro', 'Perez', 10, 'CABA'),
	('Andres', 'Rodrigyez', 45, 'CABA'),
	('Veronica', 'Alfonzo', 71, 'CABA'),
	('Agustina', 'Martinez', 67, 'CABA'),
	('Manuel', 'Perez', 40, 'CABA');