-- 1. Crear la tabla usuarios
CREATE TABLE usuarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
-- 2. Crear la tabla cuentas
CREATE TABLE cuentas (
	id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
-- 3. Crear la tabla transacciones
CREATE TABLE transacciones (
	id INT AUTO_INCREMENT PRIMARY KEY,
    emisor_id INT NOT NULL,
    receptor_id INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATETIME NOT NULL,
    FOREIGN KEY (emisor_id) REFERENCES cuentas(id),
    FOREIGN KEY (receptor_id) REFERENCES cuentas(id)
);

INSERT INTO usuarios(nombre, email) VALUES
('Sofia', 'sofia@example.com'),
('Pedro', 'pedro@example.com'),
('Luis', 'luis@example.com'),
('Ana', 'ana@example.com');

SELECT * FROM usuarios;
SELECT * FROM cuentas;

INSERT INTO cuentas(usuario_id, saldo) VALUES
(1, 5000),
(2, 3000),
(3, 10000),
(4, 7000);

-- UPDATE cuentas SET saldo = 3000  WHERE id= 2;
-- 1. Usuario Sofia transfiere 2500 dólares al Usuario Pedro.
-- emisor, receptor y monto
CALL realizar_transaccion(1, 2, 2500);

-- 2. Usuario Pedro transfiere 2000 dólares al Usuario Luis.
CALL realizar_transaccion(2, 3, 2000);

-- 3. Usuario Luis transfiere 5000 dólares al Usuario Ana.
CALL realizar_transaccion(3, 4, 5000);

-- 4. Usuario Ana transfiere 2000 dólares al Usuario Sofia.
CALL realizar_transaccion(4, 1, 12000);
-- Eliminar restriccion

/* Adicional para eliminar la restriccion de la tabla transacciones 
ALTER TABLE transacciones
DROP FOREIGN KEY transacciones_ibfk_1;
*/