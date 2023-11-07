CREATE DATABASE IF NOT EXISTS integrador_CaC;

USE integrador_CaC
	
CREATE TABLE IF NOT EXISTS oradores (
	id_orador int not null PRIMARY KEY, 
	nombre varchar(40) not null,
	apellido varchar(40) not null,
	mail varchar(40) not null,
	tema varchar(40) not null,
	fecha_alta timestamp not null default current_timestamp
);
	
	
insert into oradores (nombre, apellido, mail, tema) values 
	('Pedro', 'Perez', 'pedroPerez@gmail.com', 'Base de datos'),
	('Andres', 'Rodriguez', 'andresRodriguez@gmail.com', 'Arrays'),
	('Veronica', 'Alfonzo', 'veronicaAlfonzo@gmail.com', 'Strings'),
	('Agustina', 'Martinez', 'agustinaMartinez@gmail.com', 'Listas'),
	('Manuel', 'Pirez', 'manuelPerez@gmail.com', 'Clases (POO)'),
	('Marcos', 'Gomez', 'marcosGomez@gmail.com', 'Objetos (POO)'),
	('Andrea', 'Lopez', 'andreaLopez@gmail.com', 'Funciones'),
	('Roberto', 'Dias', 'robertoDias@gmail.com', 'Asincronismo'),
	('Florencia', 'Sosa', 'florenciaSosa@gmail.com', 'Tecnoologia'),
	('Aurelia', 'Sanchez', 'aureliaSanchez@gmail.com', 'AI');