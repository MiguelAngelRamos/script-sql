-- ANALISIS EXPLORATORIO
-- R = READ -> SELECT

-- 1. Para Seleccionar a los vendedores que tienen un salario superior al promedio
SELECT * FROM Vendedor;
--  SELECT AVG(Salario) AS Salario_promedio FROM Vendedor;
SELECT AVG(Salario) FROM Vendedor; -- TENGO EL CALCULO DEL PROMEDIO DE LOS SALARIOS
SELECT * FROM Vendedor WHERE Salario > (SELECT AVG(Salario) FROM Vendedor);

-- 2. Para Seleccionar los Productos más caros que el promedio
SELECT AVG(Precio) FROM Producto;-- PROMEDIO DEL PRECIO DE LOS PRODUCTOS
SELECT * FROM Producto WHERE Precio > (SELECT AVG(Precio) FROM Producto);

-- 3. Para Seleccionar los Clientes que han pagado más que el promedio
SELECT * FROM Cliente;
SELECT AVG(total_pagado) FROM Cliente; -- OBTENEMOS EL PROMEDIO DEL TOTAL PAGADO DE CLIENTES
SELECT * FROM Cliente WHERE total_pagado > (SELECT AVG(total_pagado) FROM Cliente);

-- 4. Para indicar cuantos vendedores tienen un salario inferior al promedio

-- 5. Para indicar cuantos productos son más baratos que el promedio

-- 6. Para seleccionar el nombre, el apellido de los vendedores que tienen un salario superior al promedio.