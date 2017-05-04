DROP DATABASE IF EXISTS inventario;
CREATE DATABASE IF NOT EXISTS inventario;

USE inventario;

CREATE TABLE IF NOT EXISTS salas(
	nombre_sala VARCHAR(20) PRIMARY KEY,
	nom_pila_encargado VARCHAR(20) NOT NULL,
	apellido_paterno VARCHAR(25) NOT NULL,
	apellido_materno VARCHAR(25) NOT NULL,
	contrasena VARCHAR(10),
	funcion VARCHAR(20));


CREATE TABLE IF NOT EXISTS registros(
	num_inventario INTEGER,
	serie INT,
	categoria VARCHAR(50),
	subcategoria VARCHAR(20),
	tipo VARCHAR(20),
	marca VARCHAR(30),
	modelo VARCHAR(30),
	material VARCHAR(30),
	medidas_talla VARCHAR(30),
	estado_fisico VARCHAR(5),
	precio FLOAT(10,2),
	estacion INT,
	nombre_sala VARCHAR(20),
	PRIMARY KEY(num_inventario,serie));

CREATE TABLE IF NOT EXISTS gabinetes(
	num_inventario,
	Serie INT,
	memoria_ram VARCHAR(30),
	procesador VARCHAR(30),
	velocidad VARCHAR(30),
	numero_discos INT,
	capacidad_disco_duro VARCHAR(30),
	sistema_operativo VARCHAR(20),
	distribucion VARCHAR(30),
	licencia VARCHAR(30),
	PRIMARY KEY(num_inventario,serie));


-- Claves foráneas

ALTER TABLE registros
ADD CONSTRAINT PKregistros
FOREIGN KEY(nombre_sala) REFERENCES salas(nombre_sala);
