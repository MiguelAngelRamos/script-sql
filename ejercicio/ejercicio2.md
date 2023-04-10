## Tabla de los operadores lógicos en SQL
<br>
<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr style="background-color: #dddddd;">
      <th>Operador</th>
      <th>Descripción</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>=</td>
      <td>Compara si dos valores son iguales</td>
    </tr>
    <tr>
      <td>&lt;&gt; o !=</td>
      <td>Compara si dos valores son diferentes</td>
    </tr>
    <tr>
      <td>&lt;</td>
      <td>Compara si el valor de la izquierda es menor que el valor de la derecha</td>
    </tr>
    <tr>
      <td>&gt;</td>
      <td>Compara si el valor de la izquierda es mayor que el valor de la derecha</td>
    </tr>
    <tr>
      <td>&lt;=</td>
      <td>Compara si el valor de la izquierda es menor o igual que el valor de la derecha</td>
    </tr>
    <tr>
      <td>&gt;=</td>
      <td>Compara si el valor de la izquierda es mayor o igual que el valor de la derecha</td>
    </tr>
    <tr>
      <td>BETWEEN</td>
      <td>Compara si un valor está dentro de un rango especificado</td>
    </tr>
    <tr>
      <td>IN</td>
      <td>Compara si un valor coincide con alguno de los valores de una lista</td>
    </tr>
    <tr>
      <td>NOT</td>
      <td>Niega una condición</td>
    </tr>
    <tr>
      <td>AND</td>
      <td>Evalúa si ambas condiciones son verdaderas</td>
    </tr>
    <tr>
      <td>OR</td>
      <td>Evalúa si al menos una de las condiciones es verdadera</td>
    </tr>
  </tbody>
</table>

<br>

## Tabla Cliente

Supongamos que tenemos una tabla llamada "clientes" con las siguientes columnas: "id" (identificador único), "nombre" (nombre del cliente), "edad" (edad del cliente), "saldo" (saldo en su cuenta) y "activo" (si el cliente está activo o no).
<br><br>
<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr style="background-color: #dddddd;">
      <th style="border: 1px solid #dddddd; text-align: left; padding: 8px;">ID</th>
      <th style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Nombre</th>
      <th style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Edad</th>
      <th style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Saldo</th>
      <th style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Activo</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">1</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Ana</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">35</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">5000</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
    </tr>
    <tr>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">2</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Juan</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">20</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">0</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">NO</td>
    </tr>
    <tr>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">3</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">María</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">45</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">10000</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
    </tr>
    <tr>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">4</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Pedro</td>
      <td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">60</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">8000</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">5</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Luisa</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">25</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">500</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">NO</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">6</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Carlos</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">30</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">1000</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">7</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Sofía</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">18</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">0</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">NO</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">8</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Pablo</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">40</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">12000</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">9</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">Ana María</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">55</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">15000</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">SI</td>
</tr>
<tr>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">10</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">David</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">22</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">0</td>
<td style="border: 1px solid #dddddd; text-align: left; padding: 8px;">NO</td>
</tr>
  </tbody>
</table>
<br>
