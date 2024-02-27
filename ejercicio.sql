SHOW DATABASES ;
/*EJERCICIOS CLASE 1*/
CREATE TABLE empresas (
    id  INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit VARCHAR(45),
    telefono VARCHAR(20),
    direccion VARCHAR(45)
);
 SELECT *  FROM empresas;

INSERT INTO empresas(nombre,nit,telefono,direccion) VALUES('ford','12345','3115711826','cl26 sur cr6');

CREATE TABLE paises (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

SELECT * FROM paises;

INSERT INTO paises (nombre)VALUES('colombia');

CREATE TABLE ciudad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

SELECT * FROM ciudad;

INSERT INTO ciudad (nombre)VALUES('medellin');

CREATE TABLE vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(45)
);

SELECT * FROM vehiculos;

INSERT INTO vehiculos (placa,modelo,marca,color,tipo_vehiculo)
            VALUES('123dfg','2024','ford','negro','camioneta');

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    edad VARCHAR (45),
    genero VARCHAR(45),
    altura VARCHAR(45),
    peso VARCHAR(45)
);

SELECT * FROM usuarios;

INSERT INTO usuarios (nombres, apellidos,correo,edad,genero,altura,peso) 
              VALUES ('manuela','giraldo','manuela@gmail.com','24','femenino','1.59','53kg');

/*EJECICIOS CLASE 2*/
/* 1 ejercicio, nombres y apellidos de todas las personas que tienen 20 años */
SELECT * FROM users

SELECT nombres, apellidos, edad FROM users WHERE edad = 20;
/* 2 ejercicio ,mujeres que tengan entre 20 y 30 años */
SELECT nombres,genero,edad  FROM users WHERE genero = 'M' AND edad BETWEEN 20 AND 30;

/* otra forma  SELECT * FROM users genero = 'M' and edad > 20 and edad < 30;*/
/* 3 ejercicio, ACs, acsendente, ORDER BY, es ordenar,limit, limita , mostrar la persona con menor edad*/
SELECT nombres,edad FROM users ORDER BY edad ASC LIMIT 1;

SELECT MIN(edad) FROM users;
/* 4 ejercicio, cuantos usuarios hay registrados en la base de datos */
SELECT MAX(id) FROM users;
/* 5 ejercicio, traer los 5 primeros usuarios de la base de datos */
SELECT nombres FROM users WHERE id BETWEEN 1 AND 5;

/* 7 ejercicio, listar usuarios que su correo finalice en .net*/
SELECT nombres, correo FROM users WHERE correo LIKE '%.net';

 /* 8 ejercicio, listar usuarios que no vivan en colombia, */
 SELECT nombres, pais FROM users WHERE pais != 'colombia';

/* 9 ejercicio, listar usuarios que no vivan en ecuador y panama  */

 SELECT nombres, pais FROM users WHERE pais != 'ecuador' AND pais != 'panama',

 /* 10 ejercicio, cuatos(numero) usuarios son de colombia y les gusta el rock */
  SELECT COUNT (*) FROM users WHERE pais = 'colombia' AND musica = 'rock';

  /* 11 ejercicio, actualizar el genero musical de todos los usuarios de la base de metal a carranga */
  UPDATE users 
  SET musica = 'carranga' 
  WHERE musica = 'metal';

  /* 12 ejercicio, listado de hombres que le gusta la carranga, sean de colombia y tengan entre 10 y 20 años de edad */
SELECT * FROM users
WHERE pais = "Colombia" AND genero = "H" AND edad > 10 AND edad < 20 AND musica = "carranga"

/* 13 ejercicio, actualizar todos los usuarios que tengan 99 años, su nuevo genero musical favorito sera carranga */

UPDATE users 
SET musica = 'carranga'
WHERE edad =99;

SELECT edad, musica FROM users WHERE edad = 99;

/* 14 ejercicio, listar todos los usuarios que su nombre inicie con la "a", "A", lower, aplica camelcase */
SELECT * FROM users 
WHERE nombres LIKE 'a%';

/* 15 ejercicio, listar todos los usuarios que su apellido finalice en z, Z */

SELECT apellidos FROM users
WHERE apellidos LIKE '%z'

/* 16 ejercicio, Actualizar los usuarios que tengan 50 años de edad su nuevo genero musical sera NULL */
UPDATE users 
SET musica = 'null'
WHERE edad = 50;

/* 17 ejercicio listar todos los usuarios que su genero musical sea igual a NULL */

SELECT * FROM users 
WHERE musica = 'null';

/* 18 ejercicio, cual es el resultado de la suma de todas las edades de la base de datos, SUM para sumar */
SELECT SUM(edad)
FROM users;

/* 19 ejercicio cuantos usuarios tenemos registrados en ecuador */
SELECT COUNT (*)
FROM users 
WHERE pais = 'ecuador';

/* 20 ejercicio, cuantos usuarios son de colombia y les gusta el vallenato */
SELECT COUNT(*) FROM users WHERE pais = 'colombia' and musica = 'vallenato';


