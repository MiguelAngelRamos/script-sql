## USUARIO TODOS LOS PRIVILEGIOS

SQL crea un nuevo usuario de MySQL llamado "admincompras" y le da acceso a todos los permisos en una base de datos llamada "devcompras" en el servidor local.

```SQL
CREATE USER 'admincompras'@'localhost' IDENTIFIED BY 'tu_clave_secreta';
```
La primera línea crea un nuevo usuario de MySQL llamado "admincompras" con una contraseña segura especificada por "tu_clave_secreta". El usuario se crea con acceso solo desde el host local (localhost).

```SQL
GRANT ALL PRIVILEGES ON devcompras.* TO 'admincompras'@'localhost';
```

La segunda línea otorga al usuario "admincompras" todos los permisos en la base de datos "devcompras" utilizando el comando "GRANT ALL PRIVILEGES". La expresión "devcompras.*" se refiere a todos los objetos de la base de datos "devcompras", incluyendo tablas, vistas y procedimientos almacenados.

```SQL
FLUSH PRIVILEGES;
```

La última línea es un comando que se utiliza para recargar los permisos de MySQL. Cuando se crean o modifican los permisos de un usuario, es necesario ejecutar este comando para asegurarse de que los cambios se hayan aplicado correctamente.


## SOLO LECTURA
Para crear un usuario que solo tenga permisos de lectura sobre la base de datos "devcompras", debes seguir los siguientes pasos:

Crear el usuario:
```sql
CREATE USER 'lectorcompras'@'localhost' IDENTIFIED BY 'tu_clave_secreta';
```
Concederle permisos de lectura solo en las tablas de la base de datos "devcompras":

```sql
GRANT SELECT ON devcompras.* TO 'lectorcompras'@'localhost';
```
Con estos comandos, el usuario "lectorcompras" podrá conectarse a la base de datos "devcompras" y leer información, pero no podrá realizar ninguna otra acción, como actualizar o eliminar registros.


## CON PRIVILEGIOS PARA CIERTAS TABLAS

Para crear un usuario en MySQL 8con total privilegio solo para la tabla cliente y producto, se pueden seguir los siguientes pasos:

1. Crear el usuario con total privilegio sobre la tabla cliente y producto:

```SQL
CREATE USER 'nuevo_usuario'@'localhost' IDENTIFIED BY 'contraseña';
```

2. Conceder permisos al usuario solo sobre las tablas cliente y producto:

```SQL
GRANT ALL PRIVILEGES ON nombre_base_datos.cliente TO 'nuevo_usuario'@'localhost';

GRANT ALL PRIVILEGES ON nombre_base_datos.producto TO 'nuevo_usuario'@'localhost';
```
***para nuestro caso no  nombre_base_datos es igual a devcompras***

Es importante reemplazar "nombre_base_datos" con el nombre de la base de datos donde se encuentran las tablas cliente y producto.

3. Confirmar los cambios:

```SQL
FLUSH PRIVILEGES;
```