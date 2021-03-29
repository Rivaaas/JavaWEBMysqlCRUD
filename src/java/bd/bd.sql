CREATE DATABASE bd_22;

USE bd_22;


CREATE TABLE usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(50),
    nombre VARCHAR(50),
    pass VARCHAR(50)
); --SELECT * FROM usuario;

INSERT INTO usuario VALUES (NULL,'11-1','Victor Rivas','123');
INSERT INTO usuario VALUES (NULL,'22-2','Martin Rivas','123');
INSERT INTO usuario VALUES (NULL,'22-2',' Rivas','123');