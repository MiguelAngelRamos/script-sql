## ON e IN 

Son palabras clave utilizadas en diferentes contextos y con propósitos distintos.

1. ON: La palabra clave ON se utiliza en las consultas que involucran operaciones de JOIN entre dos o más tablas. Cuando se realiza un JOIN, es necesario especificar la condición que relaciona las tablas involucradas. La palabra clave ON se utiliza para establecer esa condición de relación entre las tablas. Por ejemplo:

```sql
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
```
En este caso, se realiza un JOIN entre las tablas customers y orders en función de la columna customer_id que es común entre ambas tablas.

2. IN: La palabra clave IN se utiliza en las consultas para especificar un conjunto de valores en una cláusula WHERE. IN se utiliza para filtrar los registros en función de si un valor de columna está dentro de un conjunto específico de valores. Por ejemplo:

```sql
SELECT *
FROM customers
WHERE customer_id IN (1, 3, 5);
```
En este caso, la consulta devuelve todos los registros de la tabla customers donde el customer_id es 1, 3 o 5.