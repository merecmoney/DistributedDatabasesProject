--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 03/06/2020
--@Descripción: Creación de fragmentos en los 4 nodos

clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando fragmentos para cahabdd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@cahabdd_s1
@s-03-ilap-cah-s1-ddl.sql

prompt =====================================
prompt Creando fragmentos para cahabdd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@cahabdd_s2
@s-03-ilap-cah-s2-ddl.sql

prompt =====================================
prompt Creando fragmentos para mamgbd_s1
prompt =====================================
connect ilap_bdd/ilap_bdd@mamgbd_s1
@s-03-ilap-mmg-s1-ddl.sql

prompt =====================================
prompt Creando fragmentos para mamgbd_s2
prompt =====================================
connect ilap_bdd/ilap_bdd@mamgbd_s2
@s-03-ilap-mmg-s2-ddl.sql

Prompt Listo!