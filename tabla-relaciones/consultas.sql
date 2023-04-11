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
  