
# biblioteca

<!-- badges: start -->
<!-- badges: end -->

Biblioteca de Documentos de la Dirección Nacional de Mercados y Estadística - Subsecretaría de Desarrollo Estratégico - Ministerio de Turismo y Deportes de la Nación

Repositorio para la gestión y actualización de recursos de la biblioteca.

## Funciones

Se cargan al abrir el proyecto.

**Para cargar nuevos recursos en la sección de Biblioteca**

- `abrir_biblioteca()`: abre en navegador la googlesheet para cargar nuevos recursos.

- `agregar_recurso()`: actualiza el csv con el listado de recursos y renderiza el html con las nuevas tarjetas.


**Para cargar nuevos recursos en la sección de Coyuntura**

- `nueva_publicacion_coynutura()`: se debe definir el parámetro *publicacion* con una de las opciones "imet" o "coyuntura". La función actualiza el csv con el listado de informes y renderiza el html con las nuevas tarjetas.
