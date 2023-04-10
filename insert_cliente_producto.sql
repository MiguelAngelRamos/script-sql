-- Tabla Cliente
SELECT * FROM Cliente;

-- Insertamos 17 registros en la tabla "Cliente"
INSERT INTO Cliente (nombres, apellidos, telefono, direccion, comuna, email, fecha_registro, total_pagado) VALUES
('Juan', 'Pérez', '+56912345678', 'Calle Falsa 123', 'Santiago', 'juan.perez@example.com', '2020-01-01', 50000),
('María', 'González', '+56923456789', 'Av. Siempreviva 456', 'Santiago', 'maria.gonzalez@example.com', '2020-02-01', 120000),
('Pedro', 'Rodríguez', '+56934567890', 'Calle Falsa 456', 'Concepción', 'pedro.rodriguez@example.com', '2020-03-01', 80000),
('Ana', 'Martínez', '+56945678901', 'Av. Siempreviva 789', 'Antofagasta', 'ana.martinez@example.com', '2020-04-01', 150000),
('José', 'Hernández', '+56956789012', 'Calle Falsa 789', 'Valparaíso', 'Jose.hernandez@example.com', '2020-04-06', 12000),
('Laura', 'López', '+56967890123', 'Av. Siempreviva 123', 'Rancagua', 'laura.lopez@example.com', '2020-06-01', 60000),
('Miguel', 'Torres', '+56978901234', 'Calle Falsa 234', 'Temuco', 'miguel.torres@example.com', '2020-07-01', 90000),
('Sofía', 'Ruiz', '+56989012345', 'Av. Siempreviva 567', 'Concepción', 'sofia.ruiz@example.com', '2020-08-01', 110000),
('Diego', 'Sánchez', '+56990123456', 'Calle Falsa 567', 'Coquimbo', 'diego.sanchez@example.com', '2020-09-01', 70000),
('Iván', 'Castro', '+56901234567', 'Av. Siempreviva 890', 'Calama', 'ivan.castro@example.com', '2020-10-01', 100000),
('Gabriela', 'Ramírez', '+56912345678', 'Calle Falsa 678', 'Valdivia', 'gabriela.ramirez@example.com', '2020-11-01', 130000),
('Jorge', 'García', '+56923456789', 'Av. Siempreviva 234', 'Coquimbo', 'jorge.garcia@example.com', '2020-12-01', 85000),
('Carla', 'Fernández', '+56934567890', 'Calle Falsa 890', 'Talca', 'carla.fernandez@example.com', '2021-01-01', 75000),
('Andrés', 'Herrera', '+56945678901', 'Av. Siempreviva 456', 'Iquique', 'andres.herrera@example.com', '2021-02-01', 95000),
('Fabiola', 'Vargas', '+56956789012', 'Calle Falsa 123', 'Iquique', 'fabiola.munoz@example.com', '2021-03-01', 125000),
('Roberto', 'Castillo', '+56967890123', 'Av. Siempreviva 789', 'Valparaíso', 'roberto.castillo@example.com', '2021-04-01', 70000),
('Camila', 'Lagos', '+56978901234', 'Calle Falsa 234', 'Santiago', 'camila.lagos@example.com', '2021-05-01', 80000);

-- Insertar 10 registros en la tabla "Producto"

INSERT INTO Producto (nombre, categoria, productor, stock, Precio) VALUES
('Laptop', 'Electrónica', 'HP', 50, 1000000),
('Smartphone', 'Electrónica', 'Samsung', 100, 600000),
('TV', 'Electrónica', 'Sony', 30, 1500000),
('Mesa de centro', 'Hogar', 'IKEA', 20, 80000),
('Sofá', 'Hogar', 'Falabella', 10, 300000),
('Cortadora de césped', 'Jardín', 'Sodimac', 5, 120000),
('Pelota de fútbol', 'Deportes', 'Adidas', 50, 25000),
('Zapatillas', 'Ropa', 'Nike', 30, 80000),
('Juego de mesa', 'Juguetes', 'Hasbro', 15, 50000),
('Libro', 'Libros', 'Penguin Random House', 50, 15000);

-- Tabla Producto
SELECT * FROM Producto;