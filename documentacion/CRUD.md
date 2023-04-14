Un CRUD es un conjunto de operaciones básicas para manipular datos en una base de datos, que incluye crear (Create), leer (Read), actualizar (Update) y eliminar (Delete) registros. A continuación, se presenta un ejemplo simple de CRUD utilizando una tabla users y se explican las sentencias SQL utilizadas para cada operación.

1. Crear (Create) - Insertar un nuevo registro en la tabla users.
```sql
INSERT INTO users (first_name, last_name, email)
VALUES ('Richard', 'Stallman', 'richard.stallman@example.com');
```
Esta sentencia inserta un nuevo registro en la tabla users con los valores especificados para las columnas first_name, last_name y email. INSERT INTO es la cláusula que indica que queremos insertar un nuevo registro en la tabla, seguida por los nombres de las columnas entre paréntesis y los valores correspondientes en la cláusula VALUES.

2. Leer (Read) - Seleccionar registros de la tabla users.
```sql
SELECT * FROM users;
```
Esta sentencia selecciona todos los registros de la tabla users. La cláusula SELECT * indica que queremos seleccionar todas las columnas de la tabla. FROM especifica la tabla de la que queremos obtener los registros.

3. Actualizar (Update) - Modificar un registro existente en la tabla users.

```sql
UPDATE users
SET email = 'richard.stallman@example.com'
WHERE user_id = 1;
```
Esta sentencia actualiza el registro con user_id = 1 en la tabla users, cambiando el valor de la columna email. La cláusula UPDATE indica la tabla que queremos modificar, seguida por SET, que especifica las columnas y sus nuevos valores. La cláusula WHERE se utiliza para especificar qué registro(s) se deben actualizar.

4. Eliminar (Delete) - Eliminar un registro de la tabla users.

```sql
DELETE FROM users
WHERE user_id = 1;
```

Esta sentencia elimina el registro con user_id = 1 de la tabla users. La cláusula DELETE FROM indica la tabla de la que queremos eliminar el registro, y WHERE especifica qué registro(s) se deben eliminar.

Estas son las operaciones básicas de un CRUD en SQL. Puedes personalizar y adaptar estas sentencias según tus necesidades para trabajar con diferentes tablas y datos.