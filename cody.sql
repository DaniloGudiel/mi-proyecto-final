
CREATE DATABASE IF NOT EXISTS `cody`;
USE `cody`;


CREATE TABLE enc_pelicula (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    genero VARCHAR(100),
    clasificacion VARCHAR(10),
    imagen_portada VARCHAR(255)
);


CREATE TABLE det_pelicula (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT NOT NULL,
    sinopsis TEXT,
    duracion_minutos INT,
    trailer_url VARCHAR(255),
    FOREIGN KEY (id_pelicula) REFERENCES enc_pelicula(id_pelicula)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
