CREATE DATABASE dbfinanzas;
USE dbfinanzas;

-- Crear la tabla clientes
CREATE TABLE clientes (
 cliente_id INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(50),
 apellido VARCHAR(50),
 correo_electronico VARCHAR(100),
 direccion VARCHAR(200)
);

-- Crear la tabla cuentas
CREATE TABLE cuentas (
 cuenta_id INT AUTO_INCREMENT PRIMARY KEY,
 cliente_id INT,
 nombre_de_usuario VARCHAR(50),
 contraseña VARCHAR(50),
 FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO clientes (cliente_id, nombre, apellido, correo_electronico, direccion) VALUES
  (1, 'Juan', 'Perez', 'juanperez@gmail.com', 'Calle 1, Ciudad'),
  (2, 'Maria', 'Lopez', 'marialopez@hotmail.com', 'Calle 2, Ciudad'),
  (3, 'Pedro', 'Gomez', 'pedrogomez@gmail.com', 'Calle 3, Ciudad'),
  (4, 'Ana', 'Garcia', 'anagarcia@yahoo.com', 'Calle 4, Ciudad');

INSERT INTO cuentas (cuenta_id, cliente_id, nombre_de_usuario, contraseña) VALUES
  (1, 1, 'juan123', 'abc123'),
  (2, 2, 'maria456', 'def456'),
  (3, 3, 'pedro789', 'ghi789'),
  (4, 4, 'ana012', 'jkl012');