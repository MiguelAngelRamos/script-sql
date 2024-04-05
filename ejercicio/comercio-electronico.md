## Ejercicio

Desarrollar un sistema básico de comercio electrónico utilizando MySQL Workbench para gestionar clientes, productos y compras. Implementar operaciones CRUD en la tabla clientes y proporcionar ejemplos de consultas para extraer información útil de la base de datos utilizando cláusulas y funciones de SQL, como GROUP BY, AVG, HAVING, INNER JOIN. 

A lo largo del ejercicio, aprenderás cómo crear y gestionar usuarios, otorgarles permisos y realizar modificaciones en los registros de la base de datos.


## Solución

```sql
CREATE DATABASE sistema_comercio_electronico;
USE sistema_comercio_electronico;

CREATE TABLE clientes (
  cliente_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo_electronico VARCHAR(100),
  direccion VARCHAR(200),
  telefono VARCHAR(30)
);

CREATE TABLE productos(
  producto_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion TEXT,
  precio DECIMAL (10,2) 
);

CREATE TABLE compras (
  compra_id INT AUTO_INCREMENT PRIMARY KEY,
  cliente_id INT,
  producto_id INT, 
  fecha DATE,
  cantidad INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
  FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);


INSERT INTO clientes (nombre, correo_electronico, direccion, telefono) VALUES
('Elon Musk', 'elonmusk@mail.com','calle imaginaria 001','1002003001'),
('Bill Gates', 'billgates@mail.com','calle imaginaria 002','1002003002'),
('Steve Jobs', 'stevejobs@mail.com','calle imaginaria 003','1002003003'),
('Mark Zuckerberg', 'markzuckerberg@mail.com','calle imaginaria 004','1002003004'),
('Jeff Bezos', 'jeffbezos@mail.com','calle imaginaria 005','1002003005'),
('Larry Page', 'larrypage@mail.com','calle imaginaria 006','1002003006'),
('Sergey Brin', 'sergeybrin@mail.com','calle imaginaria 007','1002003007'),
('Tim Cook', 'timcook@mail.com','calle imaginaria 008', '1002003008'),
('Sundar Pichai', 'sundarpichai@mail.com','calle imaginaria 009','1002003009'),
('Sheryl Sandberg', 'sherylsandberg@mail.com','calle imaginaria 010','1002003010'),
('Marissa Mayer', 'marissamayer@mail.com','calle imaginaria 011','1002003011'),
('Susan Wojcicki', 'susanwojcicki@mail.com','calle imaginaria 012','1002003012'),
('Satya Nadella', 'satyanadella@mail.com','calle imaginaria 013','1002003013'),
('Jack Dorsey', 'jackdorsey@mail.com','calle imaginaria 014','1002003014'),
('Reed Hastings', 'reedhastings@mail.com','calle imaginaria 015','1002003015');



INSERT INTO productos (nombre, descripcion, precio) VALUES 
('Notebook Modelo A','producto genial', 1200.00),
('Notebook Modelo B','producto genial', 1500.00),
('Tablet Modelo X','producto genial', 300.00),
('Tablet Modelo Y','producto genial', 350.00),
('Celular Modelo S','producto genial', 800.00),
('Celular Modelo T','producto genial', 750.00),
('Smartwatch Modelo Q','producto genial', 200.00),
('Smartwatch Modelo R','producto genial', 250.00),
('Cámara Digital Modelo G','producto genial', 500.00),
('Cámara Digital Modelo H','producto genial', 450.00),
('Auriculares Inalámbricos','producto genial', 100.00),
('Teclado Inalámbrico','producto genial', 40.00),
('Mouse Inalámbrico','producto genial', 30.00),
('Monitor 27 Pulgadas','producto genial', 300.00),
('Monitor 32 Pulgadas','producto genial', 400.00),
('Impresora 3D Modelo D','producto genial', 700.00),
('Impresora Láser Modelo F','producto genial', 250.00),
('Router Inalámbrico','producto genial', 120.00),
('Disco Duro Externo 1TB','producto genial', 80.00),
('Memoria USB 128GB','producto genial', 25.00);



INSERT INTO compras (cliente_id, producto_id, fecha, cantidad) VALUES
(1, 1, '2024-01-01', 2),
(2, 3, '2024-01-03', 1),
(3, 2, '2024-01-05', 1),
(4, 5, '2024-01-07', 3),
(5, 4, '2024-01-09', 1),
(1, 3, '2024-01-11', 2),
(2, 2, '2024-01-13', 1),
(3, 1, '2024-01-15', 1),
(4, 4, '2024-01-17', 2),
(5, 5, '2024-01-19', 1),
(1, 2, '2024-01-21', 3),
(2, 3, '2024-01-23', 2),
(3, 4, '2024-01-25', 1),
(4, 1, '2024-01-27', 2),
(5, 2, '2024-01-29', 1),
(1, 5, '2024-01-31', 3),
(2, 4, '2024-02-02', 2),
(3, 3, '2024-02-04', 1),
(4, 2, '2024-02-06', 1),
(5, 1, '2024-02-08', 2);
```
