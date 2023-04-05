-- Insertar registros en la tabla "Vendedor"
INSERT INTO Vendedor(RUN, nombre, apellidos, fecha_nacimiento, seccion) VALUES 
('44444444-4', 'Ana', 'Martínez', '1988-04-25', 'Deportes'),
('77777777-7', 'Miguel', 'Torres', '1993-07-10', 'Cocina'),
('88888888-8', 'Sofía', 'Ruiz', '1987-08-15', 'Libros'),
('99999999-9', 'Diego', 'Sánchez', '1980-09-20', 'Música'),
('10101010-0', 'Iván', 'Castro', '1994-10-25', 'Videojuegos');
;
INSERT INTO Vendedor(RUN, nombre, apellidos, fecha_nacimiento, seccion) VALUES 
('66666666-6', 'Roberto', 'Sandoval', '1994-01-10', 'Deportes')
;

SELECT * FROM Vendedor;
-- Seleccionar a todos los vendedores de la sección Deportes
SELECT * FROM Vendedor WHERE seccion = 'Deportes';

-- Seleccionar el nombre y apellidos de los vendedores nacidos antes del 1 de enero 1990
SELECT nombre, apellidos FROM Vendedor WHERE fecha_nacimiento < '1990-01-01';
-- ana, laura, sofia y diego

-- Seleccionar el Run y la seccion de vendedores ordenados en orden alfabetico
SELECT RUN, seccion FROM Vendedor ORDER BY seccion ASC;