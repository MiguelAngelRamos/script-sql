"UtilisBooks" es una librería en línea que ha visto un aumento en sus ventas debido a la creciente popularidad de la lectura digital y física. La empresa vende libros a través de su sitio web y también ofrece la opción de pedidos.

### Descripción del ejercicio
Desarrollar un modelo entidad-relación para la base de datos de "UtilBooks" que contenga información sobre clientes, libros y pedidos.

#### Datos registrados
- **Para cada cliente**: Código de cliente (único), múltiples números de contacto, y correo electrónico.
- **Para cada libro**: Código de libro (único), autores, número de copias disponibles en el almacén, y título del libro.
- **Para cada pedido**: Cada pedido tiene un encabezado y detalles del pedido. El encabezado incluye el código de cliente, un número de contacto para el envío, y la fecha del pedido. Los detalles del pedido contienen varias entradas, cada una con el código del libro pedido y la cantidad solicitada.

#### Datos adicionales a almacenar
- **Almacén**: Se requiere almacenar datos sobre los almacenes donde se guardan los libros. Cada almacén tiene un código único y una dirección.
- **Distribución de libros**: Es crucial saber desde qué almacén se enviarán los libros, dependiendo de la disponibilidad.

### Relaciones
- Un cliente puede realizar varios pedidos.
- Un pedido puede incluir varios libros.
- Un libro puede estar en varios pedidos y puede ser almacenado en varios almacenes.



1. **Cabecera del Pedido**
   - La **cabecera del pedido** se refiere a la parte del pedido que contiene información general sobre el mismo. Estos son datos que identifican y contextualizan el pedido en su conjunto, pero no entran en detalles sobre los artículos específicos que se están pidiendo.
   - Campos típicos en la cabecera incluyen:
     - **Número de Cliente**: Relaciona el pedido con un cliente específico en la base de datos.
     - **Dirección de Envío**: Indica dónde deben ser enviados los artículos del pedido.
     - **Fecha del Pedido**: Fecha en la que se realizó o registró el pedido.

2. **Cuerpo del Pedido**
   - El **cuerpo del pedido** contiene información detallada sobre los artículos específicos que se incluyen en el pedido. Esta parte del modelo se ocupa de los detalles a nivel de ítem.
   - Cada línea en el cuerpo del pedido representa un artículo específico que se está ordenando, y típicamente incluye:
     - **Número del Artículo**: Identificador del artículo que se está pidiendo.
     - **Cantidad**: La cantidad de ese artículo específico que se quiere.

En un sistema de base de datos, estas dos partes permiten manejar los pedidos de manera eficiente. La separación entre la cabecera y el cuerpo del pedido facilita el manejo de datos a diferentes niveles:

- **Nivel de Pedido**: Manejo de la logística y detalles generales del pedido.
- **Nivel de Artículo**: Control de inventarios y especificaciones detalladas de los productos solicitados.
