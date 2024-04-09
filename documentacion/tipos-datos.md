Esta tabla de ejemplo incluirá diferentes tipos para demostrar cómo puedes almacenar distintas formas de información:

```sql
CREATE TABLE ejemplo_datos (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Un número entero que se autoincrementa, comúnmente usado para la llave primaria.
    nombre VARCHAR(255), -- Cadena de caracteres de longitud variable, máximo 255 caracteres.
    edad TINYINT, -- Número entero pequeño, adecuado para almacenar edades.
    altura DECIMAL(3, 2), -- Número decimal para precisión fija, por ejemplo, 1.75 metros.
    fecha_nacimiento DATE, -- Fecha sin hora, en formato 'YYYY-MM-DD'.
    hora_registro TIME, -- Hora sin fecha, en formato 'HH:MM:SS'.
    fecha_hora_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha y hora, se asigna automáticamente al momento de la inserción.
    biografia TEXT, -- Un tipo de dato de texto largo para almacenar cadenas de caracteres grandes.
    email VARCHAR(255) UNIQUE, -- Cadena de caracteres que no se puede repetir en la tabla.
    salario_anual FLOAT, -- Número de punto flotante para almacenar salarios con decimales.
    sitio_web BLOB, -- Para almacenar datos binarios, como imágenes o archivos.
    activo BOOLEAN -- Tipo booleano, MySQL lo trata como TINYINT(1), donde '1' es verdadero y '0' es falso.
);
```

Esta tabla incluye una variedad de tipos de datos que cubren la mayoría de las necesidades básicas al trabajar con bases de datos en MySQL:

- **Numéricos**: `INT`, `TINYINT`, `DECIMAL`, y `FLOAT`.
- **Fechas y horas**: `DATE`, `TIME`, y `TIMESTAMP`.
- **Cadenas de caracteres y texto**: `VARCHAR` y `TEXT`.
- **Binarios**: `BLOB`.
- **Lógicos**: `BOOLEAN`.

Cada tipo de dato tiene su propósito y debe ser seleccionado basándose en lo que mejor se ajuste a los datos que planeas almacenar en cada campo.
