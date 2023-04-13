```sql
CREATE DEFINER=`amazon_usuario`@`localhost` PROCEDURE `realizar_transaccion`(IN emisor_id INT, IN receptor_id INT, IN monto DECIMAL(10,2))
BEGIN
  DECLARE saldo_emisor DECIMAL(10,2);
  
  START TRANSACTION;
  
  SELECT saldo INTO saldo_emisor FROM cuentas WHERE id = emisor_id;
  
  IF saldo_emisor >= monto THEN
    UPDATE cuentas SET saldo = saldo - monto WHERE id = emisor_id;
    UPDATE cuentas SET saldo = saldo + monto WHERE id = receptor_id;
    
    INSERT INTO transacciones(emisor_id, receptor_id, monto, fecha)
    VALUES(emisor_id, receptor_id, monto, NOW());
    COMMIT;
  ELSE 
    ROLLBACK;
    SELECT 'ERROR EN LA TRANSACCION';
  END IF;
END
```