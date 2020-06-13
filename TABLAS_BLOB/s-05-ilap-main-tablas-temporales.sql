--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de tablas temporales para manejo de BLOBs.

clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando tablas temporales para cahabdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@cahabdd_s1
@s-05-ilap-tablas-temporales.sql

prompt =====================================
prompt Creando tablas temporales para cahabdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@cahabdd_s2
@s-05-ilap-tablas-temporales.sql

prompt =====================================
prompt Creando tablas temporales para mamgbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@mamgbd_s1
@s-05-ilap-tablas-temporales.sql

prompt =====================================
prompt Creando tablas temporales para mamgbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@mamgbd_s2
@s-05-ilap-tablas-temporales.sql

Prompt Listo!
exit
