AVG es una función de agregación de SQL que se utiliza para calcular el valor promedio de una columna numérica en una tabla. La sintaxis básica de la función AVG es la siguiente:

```sql
SELECT AVG(columna) FROM tabla;
```
Donde "columna" es el nombre de la columna numérica de la tabla de la cual se desea calcular el promedio y "tabla" es el nombre de la tabla que contiene la columna.

La función AVG calcula la suma de todos los valores de la columna y luego divide esta suma por el número total de filas de la tabla. El resultado es el valor promedio de la columna.

Por ejemplo, si se desea calcular el precio promedio de los productos en la tabla "Producto" que tiene la columna "Precio", se puede usar la siguiente consulta:

```sql
SELECT AVG(Precio) FROM Producto;
```
El resultado de esta consulta sería el valor promedio de los precios de los productos en la tabla "Producto".