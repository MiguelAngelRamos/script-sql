## PRIMARY KEY
Una primary key (clave primaria) es un campo o un conjunto de campos en una tabla de una base de datos relacional que identifica de forma única cada registro en la tabla. La clave primaria se utiliza para garantizar la integridad de los datos y para establecer relaciones entre tablas en la base de datos.

En general, la clave primaria se define cuando se crea la tabla y se puede establecer como un campo o una combinación de campos. Algunas de las características de una clave primaria son:

- Debe ser única para cada registro en la tabla.
- No puede tener valores nulos (NULL).
- Debe tener un índice único asociado.

## FOREIGN KEY

Una foreign key (clave foránea) es un campo en una tabla que se relaciona con la clave primaria de otra tabla en la base de datos. La clave foránea se utiliza para establecer relaciones entre tablas y garantizar la integridad referencial de los datos.

Por lo general, se establece una relación entre dos tablas a través de la clave primaria de una tabla (tabla padre) y la clave foránea de otra tabla (tabla hija). La clave foránea debe hacer referencia a una clave primaria existente en la tabla padre y se puede definir cuando se crea la tabla o mediante una sentencia ALTER TABLE.

Algunas de las características de una clave foránea son:

- Debe hacer referencia a la clave primaria de otra tabla en la base de datos.
- Puede tener valores nulos (NULL), lo que indica que la relación no está establecida.
- Puede establecerse con la opción ON DELETE CASCADE, que permite eliminar automáticamente los registros relacionados en la tabla hija cuando se elimina un registro en la tabla padre.




