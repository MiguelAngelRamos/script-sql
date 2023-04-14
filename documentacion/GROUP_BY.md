## El GROUP BY

En SQL se utiliza para agrupar filas que tienen los mismos valores en columnas específicas en un conjunto de resultados. Se utiliza a menudo con funciones de agregado como COUNT, SUM, AVG, MAX o MIN para realizar cálculos en cada grupo de filas.


### Ejemplo 1: Contar la cantidad de clientes por país

Supongamos que tienes una tabla de clientes llamada customers con las siguientes columnas: customer_id, first_name, last_name, country y email. Quieres saber cuántos clientes hay en cada país. Puedes utilizar GROUP BY para agrupar los registros por país y luego usar la función COUNT para contar el número de clientes en cada grupo.

```sql
SELECT country, COUNT(*) as num_customers
FROM customers
GROUP BY country;
```
En esta consulta, las filas se agrupan por la columna country, y se cuenta el número de filas en cada grupo utilizando la función COUNT. El resultado muestra la cantidad de clientes en cada país.

### Ejemplo 2: Calcular el total de ventas por producto

Supongamos que tienes una tabla de pedidos llamada orders con las siguientes columnas: order_id, product_id, quantity y price. Quieres calcular el total de ventas para cada producto. Puedes utilizar GROUP BY para agrupar los registros por product_id y luego usar la función SUM para sumar las ventas (cantidad multiplicada por el precio) de cada grupo.

```sql
SELECT product_id, SUM(quantity * price) as total_sales
FROM orders
GROUP BY product_id;
```
En esta consulta, las filas se agrupan por la columna product_id, y se calcula el total de ventas en cada grupo utilizando la función SUM. El resultado muestra el total de ventas para cada producto.

### Ejemplo 3: Encontrar el salario promedio por departamento

Supongamos que tienes una tabla de empleados llamada employees con las siguientes columnas: employee_id, first_name, last_name, department_id y salary. Quieres calcular el salario promedio para cada departamento. Puedes utilizar GROUP BY para agrupar los registros por department_id y luego usar la función AVG para calcular el salario promedio en cada grupo.

```sql
SELECT department_id, AVG(salary) as average_salary
FROM employees
GROUP BY department_id;
```

En esta consulta, las filas se agrupan por la columna department_id, y se calcula el salario promedio en cada grupo utilizando la función AVG. El resultado muestra el salario promedio para cada departamento.

La razón principal para usar GROUP BY es agrupar y resumir los datos de una tabla en función de valores comunes en una o más columnas, lo que permite realizar cálculos y análisis en estos grupos de manera eficiente.