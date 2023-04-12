USE devcomprasfull;

SELECT * FROM cliente;
/*
Se utiliza para calcular la diferencia entre dos fechas
TIMESTAMPDIFF()
DATEDIFF()
CURDATE() = la fecha Actual
*/

-- 1. Diferencia entre dos fechas específicas
SELECT DATEDIFF('2023-04-11', '2023-03-01') AS diferencia_dias;

-- 2. Diferencia entre la fecha actual y una fecha específica
SELECT DATEDIFF(CURDATE(), '2023-12-01') as diferencia_dias;

-- Deseamos calcular la antiguedad en dias de cada cliente desde su fecha_registro hasta la fecha actual
SELECT nombres, DATEDIFF(CURDATE(), fecha_registro) AS antiguedad_dias FROM cliente;

-- 3. Diferencia en años(YEAR)
SELECT nombres, TIMESTAMPDIFF(YEAR, fecha_registro, CURDATE()) AS antiguedad_años FROM cliente;