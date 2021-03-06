--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de vistas para todos los sitios

clear screen
whenever sqlerror exit rollback;

prompt ===========================================
prompt Creando vistas para cahabdd_s1
prompt ===========================================
connect ilap_bdd/ilap_bdd@cahabdd_s1
prompt creando vistas que no requieren manejo de BLOBs
@05-views-creation/s-05-ilap-vistas.sql
prompt creando vistas de replicación
@05-views-creation/s-05-ilap-netmax-vistas
prompt creando tablas temporales
@05-views-creation/s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@05-views-creation/s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@05-views-creation/s-05-ilap-cah-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para cahabdd_s2
prompt ===========================================
connect ilap_bdd/ilap_bdd@cahabdd_s2
prompt creando vistas que no requieren manejo de BLOBs
@05-views-creation/s-05-ilap-vistas.sql
prompt creando vistas de replicación
@05-views-creation/s-05-ilap-netmax-vistas
prompt creando tablas temporales
@05-views-creation/s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@05-views-creation/s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@05-views-creation/s-05-ilap-cah-s2-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para mamgbd_s1
prompt ===========================================
connect ilap_bdd/ilap_bdd@mamgbd_s1
prompt creando vistas que no requieren manejo de BLOBs
@05-views-creation/s-05-ilap-vistas.sql
prompt creando vistas de replicación
@05-views-creation/s-05-ilap-netmax-vistas
prompt creando tablas temporales
@05-views-creation/s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@05-views-creation/s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@05-views-creation/s-05-ilap-mmg-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para mamgbd_s2
prompt ===========================================
connect ilap_bdd/ilap_bdd@mamgbd_s2
prompt creando vistas que no requieren manejo de BLOBs
@05-views-creation/s-05-ilap-vistas.sql
prompt creando vistas de replicación
@05-views-creation/s-05-ilap-netmax-vistas
prompt creando tablas temporales
@05-views-creation/s-05-ilap-tablas-temporales.sql
prompt creando objetos para manejo de BLOBs
@05-views-creation/s-05-ilap-funciones-blob.sql
prompt creando vistas con soporte para BLOBs
@05-views-creation/s-05-ilap-mmg-s2-vistas-blob.sql

--completar
prompt Listo!
