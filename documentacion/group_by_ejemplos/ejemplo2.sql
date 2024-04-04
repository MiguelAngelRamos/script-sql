CREATE DATABASE IF NOT EXISTS tienda_electronica;
USE tienda_electronica;

CREATE TABLE ventas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(255),
    cantidad INT
);

SELECT * FROM ventas;
-- insertar datos

INSERT INTO ventas (producto, cantidad) VALUES 
('Telefonos', 5),
('Televisores', 10),
('Computadoras', 3),
('Computadoras', 8),
('Telefonos', 7);

-- NECESITAMOS OBTENER LA CANTIDAD VENDIDA DE CADA TIPO DE PRODUCTO

SELECT producto, SUM(cantidad) as total_cantidad FROM ventas GROUP BY producto;