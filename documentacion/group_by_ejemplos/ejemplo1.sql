CREATE DATABASE IF NOT EXISTS empresa;
SHOW DATABASES;
USE empresa;
-- GROUP BY

CREATE TABLE IF NOT EXISTS empleados(
	empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    departamento_id INT,
    salario DECIMAL(10,2)
);

INSERT INTO empleados(nombre, apellido, departamento_id, salario) VALUES ('sofia', 'gomez', 7, 3500.00);
-- 7 es informatica, 2 es contabilidad, 1 es recursos humanos.
INSERT INTO empleados(nombre, apellido, departamento_id, salario) VALUES 
('Ana', 'Perez', 1, 3000.00),
('Luis', 'Gomez', 2, 4500.00),
('Margarita', 'Díaz', 2, 5500.00),
('Juan', 'Rodriguez', 7, 4000.00);

-- Calcular el salario promedio por departamento
SELECT departamento_id, AVG(salario) as promedio_salario FROM empleados GROUP BY departamento_id;

SELECT * FROM empleados;