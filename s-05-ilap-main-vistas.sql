--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de sinónimos en todas las PDBs

connect ilap_bdd/ilap_bdd@cahabdd_s1
prompt =====================================
prompt Creando vistas para cahabdd_s1
prompt =====================================
@s-05-ilap-vistas.sql

connect ilap_bdd/ilap_bdd@cahabdd_s2
prompt =====================================
prompt Creando vistas para cahabdd_s2
prompt =====================================
@s-05-ilap-vistas.sql

connect ilap_bdd/ilap_bdd@mamgbd_s1
prompt =====================================
prompt Creando vistas para mamgbd_s1
prompt =====================================
@s-05-ilap-vistas.sql

connect ilap_bdd/ilap_bdd@mamgbd_s2
prompt =====================================
prompt Creando vistas para mamgbd_s2
prompt =====================================
@s-05-ilap-vistas.sql

Prompt Listo!
exit
