-- Ejercicios o consultas
SELECT * FROM clientes;
SELECT * FROM cuentas;

-- 1. Seleccionar todos los clientes que tengan una cuenta.
-- la tabla cliente (c) y la tabla cuentas (cu)
SELECT c.* FROM clientes c JOIN cuentas cu ON c.cliente_id = cu.cliente_id;

-- 2. Seleccionar todos los clientes que tengan una cuenta "dbfinanzas" cuyo apellido sea "Lopez"
SELECT c.* FROM clientes c JOIN cuentas cu ON c.cliente_id = cu.cliente_id WHERE c.apellido = 'Lopez';

-- 3. Seleccionar todas las cuentas que tengan una contraseña que contenga la letra 'a'
-- LIKE
	
    SELECT * FROM cuentas WHERE contraseña LIKE '%a%';

-- 4. Seleccionar todas las cuentas que tengan una contraseña que comience con letra 'a' o la letra 'd'
   SELECT * FROM cuentas WHERE contraseña LIKE 'a%' OR contraseña LIKE 'd%';
   
-- 5. Seleccionar todos los clientes que tenga una cuenta y cuyo correo eletronico contenga la palabra "gmail"

    SELECT c.* FROM clientes c JOIN cuentas cu ON c.cliente_id = cu.cliente_id
	WHERE c.correo_electronico LIKE '%gmail%';
    
-- 6. Agregar mas clientes  
  INSERT INTO clientes (cliente_id, nombre, apellido, correo_electronico, direccion) VALUES
  (5, 'Laura', 'González', 'lauragonzalez@gmail.com', 'Calle 1, Ciudad'),
  (6, 'Carlos', 'Martínez', 'carlosmartinez@hotmail.com', 'Calle 2, Ciudad'),
  (7, 'Marta', 'Fernández', 'martafdez@gmail.com', 'Calle 3, Ciudad'),
  (8, 'Jorge', 'Rojas', 'jorgerojas@yahoo.com', 'Calle 3, Ciudad'),
  (9, 'Juan', 'Hernández', NULL, 'Calle 1, Ciudad'),
  (10, 'Laura', 'García', NULL, 'Calle 2, Ciudad');
  
  /*
  GROUP BY en SQL se utiliza para agrupar filas con valores idénticos y realizar cálculos en cada grupo resultante
  */
  
  -- Si queremos saber cuántos clientes hay por cada dirección
  SELECT direccion, COUNT(cliente_id) AS cantidad_de_clientes FROM clientes GROUP BY direccion;
  -- CANTIDAD DE CORREO
  SELECT COUNT(correo_electronico) FROM clientes;