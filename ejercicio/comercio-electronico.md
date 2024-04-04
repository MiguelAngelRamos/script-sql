## Ejercicio

Desarrollar un sistema básico de comercio electrónico utilizando MySQL Workbench para gestionar clientes, productos y compras. Implementar operaciones CRUD en la tabla clientes y proporcionar ejemplos de consultas para extraer información útil de la base de datos utilizando cláusulas y funciones de SQL, como GROUP BY, AVG, HAVING, INNER JOIN. 

A lo largo del ejercicio, aprenderás cómo crear y gestionar usuarios, otorgarles permisos y realizar modificaciones en los registros de la base de datos.


## Solución

```sql

CREATE TABLE clientes (
  cliente_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo_electronico VARCHAR(100),
  direccion VARCHAR(200),
  telefono VARCHAR(30)
)

CREATE TABLE productos(
  producto_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion TEXT,
  precio DECIMAL (10,2) 
);

CREATE TABLE compras (

  compra_id INT AUTO_INCREMENT PRIMARY KEY,
)


```
