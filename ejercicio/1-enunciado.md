## Soluciona este ejercicio en sql mysql 8: 

#### Enunciado del ejercicio:

Amazon desea administrar las transacciones en dólares entre sus usuarios internos en su plataforma. Se te pide diseñar una base de datos en MySQL 8 para gestionar la información de los usuarios, sus cuentas y las transacciones realizadas entre ellos.

#### Puntos de solución:

1. Crear una base de datos llamada amazon_db y un usuario amazon_user con todos los privilegios sobre esa base de datos.

2. Crear tres tablas en la base de datos:
  <ul style='margin-left: 1rem;'>
    <li>Una tabla usuarios que contenga las columnas id, nombre y email.</li>
    <li>Una tabla cuentas que almacene las columnas id, usuario_id, y saldo, donde usuario_id sea una clave foránea que haga referencia a la tabla usuarios.</li>
    <li>Una tabla transacciones que registre las columnas id, emisor_id, receptor_id, monto y fecha, donde emisor_id y receptor_id sean claves foráneas que hagan referencia a la tabla cuentas.</li>
  </ul>

3. Insertar datos iniciales en las tablas usuarios y cuentas para cuatro usuarios (Sofia, Pedro, Luis y Ana) con saldos diferentes.

4. Realizar transacciones entre los usuarios siguiendo estos pasos:

  <ul style='margin-left: 1rem;'>
    <li>Iniciar una transacción.</li>
    <li>Verificar el saldo del usuario emisor.</li>
    <li>Si el saldo es suficiente, transferir el monto deseado del usuario emisor al receptor, actualizar sus saldos en la tabla cuentas y registrar la transacción en la tabla transacciones.</li>
    <li>Si el saldo no es suficiente, deshacer la transacción utilizando ROLLBACK.</li>
    <li>Si la transacción fue exitosa, confirmar la transacción con COMMIT.</li>
  </ul>
 

5. Ejecutar las siguientes transacciones:

  <ul style='margin-left: 1rem;'>
    <li>Usuario Sofia transfiere 2500 dólares al Usuario Pedro.</li>
    <li>Usuario Pedro transfiere 2000 dólares al Usuario Luis.</li>
    <li>Usuario Luis transfiere 5000 dólares al Usuario Ana.</li>
    <li>Usuario Ana transfiere 2000 dólares al Usuario Sofia.</li>
  </ul>

