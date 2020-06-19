--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 18/06/2020
--@Descripción: Script principal empleado para configurar el soporte
-- de datos BLOB en los 4 nodos.

Prompt configurando directorios y otorgando registros.

--cahabdd_s1
Prompt configurando soporte BLOB para cahabdd_s1
connect ilap_bdd/ilap_bdd@cahabdd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--cahabdd_s2
Prompt configurando soporte BLOB para cahabdd_s2
connect ilap_bdd/ilap_bdd@cahabdd_s2
@s-07-ilap-configuracion-soporte-blobs.sql

--mamgbd_s1
Prompt configurando soporte BLOB para mamgbd_s1
connect ilap_bdd/ilap_bdd@mamgbd_s1
@s-07-ilap-configuracion-soporte-blobs.sql

--mamgbd_s2
Prompt configurando soporte BLOB para mamgbd_s2
connect ilap_bdd/ilap_bdd@mamgbd_s2
@s-07-ilap-configuracion-soporte-blobs.sql

Prompt Listo !