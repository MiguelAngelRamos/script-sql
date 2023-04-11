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
-- SELECT * FROM Vendedor WHERE salario < (SELECT AVG(salario) FROM vendedor);
   SELECT COUNT(*) FROM Vendedor WHERE salario < (SELECT AVG(salario) FROM vendedor);
   
-- 5. Para indicar cuantos productos son más baratos que el promedio
--  SELECT * FROM Producto WHERE Precio < (SELECT AVG(Precio) FROM producto); 
--- SELECT * FROM Producto;
   SELECT COUNT(*) FROM Producto WHERE Precio < (SELECT AVG(Precio) FROM producto); 
  
-- 6. Para seleccionar el nombre, el apellido de los vendedores que tienen un salario superior al promedio.
   SELECT nombre, apellidos FROM Vendedor WHERE Salario > (SELECT AVG(Salario) FROM Vendedor);
   
-- 7. Para seleccionar el producto más barato y el producto más caro del inventario.

  -- Pistas Select MIN() y MAX()
  -- SELECT * FROM producto WHERE precio = (SELECT MIN(precio) FROM producto) OR precio = (SELECT MAX(precio) FROM producto);
  SELECT MIN(Precio) AS min_precio, MAX(Precio) AS max_precio FROM Producto;
  
-- 8. Sumatoria de todos los productos
  SELECT SUM(Precio) AS costo_total FROM Producto;
  
-- 9. GROUP BY, ORDER BY

-- 10.

-- 11.
  
  