-- READ (leer) usando Select Sql
-- 1. Mostrar todos los vendedores de la seccion "Jardin"

SELECT * FROM Vendedor;
-- 1. Mostrar todos vendedores de la sección "Jardin"
SELECT * FROM Vendedor WHERE seccion = 'Jardín';

-- 2. Mostrar los datos del vendedor con RUN '44444444-4"
SELECT * FROM Vendedor WHERE RUN = '44444444-4';

-- 3. Mostrar los datos de todos los vendedores que nacieron en el año 1990
SELECT * FROM Vendedor WHERE YEAR(fecha_nacimiento) = 1990;

-- Actualizar Registros (Update)

-- 1. Actualizar la sección del vendedor con RUN "88888888-8" a "Hogar"
UPDATE Vendedor SET seccion = 'Hogar' WHERE RUN = '88888888-8';

-- 2. Actualizar el apellido del vendedor con RUN "55555555-5" a "Garcia"
UPDATE Vendedor SET apellidos = 'Garcia' WHERE RUN = '55555555-5';

-- 3. Actualizar la fecha de nacimiento del vendedor con RUN '99999999-9' a '1985-01-01'
UPDATE Vendedor SET fecha_nacimiento = '1985-01-01' WHERE RUN = '99999999-9';

## ELIMINAR REGISTROS (DELETE)

-- 1.  Eliminar al vendedor con RUN "13131313-1"

DELETE FROM Vendedor WHERE RUN = '13131313-1';

-- 2. Eliminar a todos los vendedores de la seccion Deportes

DELETE FROM Vendedor WHERE seccion = 'Deportes';
