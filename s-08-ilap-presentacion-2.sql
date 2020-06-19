--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 18/06/2020
--@Descripción: Archivo de carga inicial para catalogos replicados.

clear screen
whenever sqlerror exit rollback;
--Para visualizar export NLS_LANG=SPANISH_SPAIN.WE8ISO8859P1

Prompt ======================================
Prompt Cargando catalogos de forma manual en cahabdd_s1
Prompt ======================================
connect ilap_bdd/ilap_bdd@cahabdd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catalogos de forma manual en cahabdd_s2
Prompt ======================================
connect ilap_bdd/ilap_bdd@cahabdd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catalogos de forma manual en mamgbd_s1
Prompt ======================================
connect ilap_bdd/ilap_bdd@mamgbd_s1
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt ======================================
Prompt Cargando catalogos de forma manual en mamgbd_s2
Prompt ======================================
connect ilap_bdd/ilap_bdd@mamgbd_s2
delete from status_laptop;
@carga-inicial/status_laptop.sql
commit;

Prompt Listo!
exit