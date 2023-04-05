-- Crear la tabla producto 
CREATE TABLE Producto (
SKU INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
categoria VARCHAR(30) NOT NULL,
stock INT NOT NULL
);

-- Crear la tabla Vendedor
CREATE TABLE Vendedor(
 RUN VARCHAR(12) PRIMARY KEY,
 nombre VARCHAR(50) NOT NULL,
 apellidos VARCHAR(50) NOT NULL,
 fecha_nacimiento DATE NOT NULL,
 seccion VARCHAR(30) NOT NULL
);