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

-- Actualizar los registros de tabla vendedor "Salario"

-- UPDATE Vendedor SET Salario = 2000000 WHERE RUN= '10101010-0';

UPDATE Vendedor 
SET Salario = 
	CASE
        WHEN RUN = '10101010-0' THEN 2000000
        WHEN RUN = '11111111-1' THEN 2200000
        WHEN RUN = '12121212-1' THEN 3000000
        WHEN RUN = '14141414-1' THEN 1900000
        WHEN RUN = '22222222-2' THEN 2100000
        WHEN RUN = '55555555-5' THEN 2500000
        WHEN RUN = '77777777-7' THEN 2300000
        WHEN RUN = '88888888-8' THEN 2700000
        WHEN RUN = '99999999-9' THEN 1800000
	END
WHERE RUN IN ('10101010-0','11111111-1','12121212-1','14141414-1','22222222-2','55555555-5','77777777-7','88888888-8','99999999-9');
-- 