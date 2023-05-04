USE curso_db;
--  
/* Constraints o Definiciones de columna
 * 
 * PRIMARY KEY
 *  Establece llave primaria
 *  
 *  Como funcion
 * 	PRIMARY KEY(usuario_id)
 * 
 * UNIQUE
 *  Establece atributo unico, sus valores no se pueden repetir
 * 
 *  Como funcion
 *  UNIQUE KEY(attr)
 * 
 * AUTO_INCREMENT 
 * 	Si la columna es numerica hace que cada registro aumente de 1 en 1
 *  
 *  Valor inicial se puede alterar
 * 
 * UNSIGNED
 *  Entero sin signo (0 a 4000000000 aprox.)
 * 
 * NOT NULL
 *  Atributo no puede ser nulo
 * 
 * NULL
 *  Atributo nulo
 * DEFAULT <valor>
 *  Establece valor por defecto
 * 
 * COMMENT 'string'
 *  Comentario de atributo
 * 
 * ver más: https://dev.mysql.com/doc/refman/8.0/en/create-table.html
 * */


CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50) UNIQUE,
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero'
);


-- O tambien

CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT UNSIGNED AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
	correo VARCHAR(50),
	direccion VARCHAR(100) DEFAULT "Sin direccion",
	edad INT DEFAULT 0 COMMENT 'entero',
	PRIMARY KEY(usuario_id),
	UNIQUE KEY(correo)
);

