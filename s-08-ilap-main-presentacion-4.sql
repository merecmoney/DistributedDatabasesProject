--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 20/06/2020
--@Descripción: Creación de fragmentos en los 4 nodos

clear screen
whenever sqlerror exit rollback;

set serveroutput on
prompt =================================================
prompt Ejecutando validador presentacion 4 en cahabdd_s1
prompt =================================================
connect ilap_bdd/ilap_bdd@cahabdd_s1
@s-08-ilap-presentacion-4.plb

prompt =================================================
prompt Ejecutando validador presentacion 4 en cahabdd_s2
prompt =================================================
connect ilap_bdd/ilap_bdd@cahabdd_s2
@s-08-ilap-presentacion-4.plb

prompt =================================================
prompt Ejecutando validador presentacion 4 en mamgbd_s1
prompt =================================================
connect ilap_bdd/ilap_bdd@mamgbd_s1
@s-08-ilap-presentacion-4.plb

prompt =================================================
prompt Ejecutando validador presentacion 4 en mamgbd_s2
prompt =================================================
connect ilap_bdd/ilap_bdd@mamgbd_s2
@s-08-ilap-presentacion-4.plb

Prompt Listo!
exit