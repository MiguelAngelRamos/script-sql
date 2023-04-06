-- Se agregan 3 vendedores

INSERT INTO Vendedor(RUN, nombre, apellidos, fecha_nacimiento, seccion)
VALUES('12121212-1', 'Ana', 'González', '1990-05-15', 'Hogar');

INSERT INTO Vendedor(RUN, nombre, apellidos, fecha_nacimiento, seccion)
VALUES('13131313-1', 'Luis', 'Morales', '1988-10-20', 'Deportes');

INSERT INTO Vendedor(RUN, nombre, apellidos, fecha_nacimiento, seccion)
VALUES('14141414-1', 'Andrea', 'Castro', '1995-12-01', 'Electrónica');

-- Select hacia tabla Vendedor para comprobar el ingreso

SELECT * FROM Vendedor;