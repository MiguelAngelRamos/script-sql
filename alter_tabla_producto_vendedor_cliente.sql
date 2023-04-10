-- Agregar el atributo "Precio" a la tabla "Producto"
SELECT * FROM Producto;
ALTER TABLE Producto ADD Precio DECIMAL(10, 2) NOT NULL;

-- Agregar el atributo "Salario" a la tabla "Vendedor"
SELECT * FROM Vendedor;
ALTER TABLE Vendedor ADD Salario DECIMAL(10, 2) NOT NULL DEFAULT 0;

-- Agregar el atributo "Total Pagado" a la tabla "Cliente"
SELECT * FROM cliente;
-- ALTER TABLE Cliente ADD `Total pagado` DECIMAL (10,2) NOT NULL DEFAULT 0;
ALTER TABLE Cliente ADD total_pagado DECIMAL(10,2) NOT NULL DEFAULT 0;

