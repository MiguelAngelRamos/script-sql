La cláusula HAVING se utiliza para filtrar los resultados de una consulta agrupada, aplicando una condición sobre los valores agregados.
Aquí tienes algunos ejemplos que ilustran el uso de GROUP BY y HAVING:
Contar la cantidad de empleados por departamento y mostrar solo aquellos departamentos que tienen más de 5 empleados:

```SQL
SELECT department_id, COUNT(*) as employee_count
FROM employees
GROUP BY department_id
HAVING employee_count > 5;
```
Mostrar el total de ventas por región y listar solo las regiones cuyas ventas superan los $10,000:
```SQL
SELECT region, SUM(sales_amount) as total_sales
FROM sales
GROUP BY region
HAVING total_sales > 10000;
```
Calcular el promedio de salario por puesto y mostrar solo los puestos con un promedio de salario superior a $60,000:
```SQL
SELECT job_title, AVG(salary) as average_salary
FROM employees
GROUP BY job_title
HAVING average_salary > 60000;
```
Encontrar el número mínimo de días de vacaciones tomadas por empleados en cada departamento y mostrar solo los departamentos donde el mínimo de días tomados es mayor que 10:

```SQL
SELECT department_id, MIN(vacation_days) as min_vacation_days
FROM employees
GROUP BY department_id
HAVING min_vacation_days > 10;
```
Estos ejemplos muestran cómo utilizar GROUP BY para agrupar datos y HAVING para aplicar condiciones a los valores agregados resultantes.