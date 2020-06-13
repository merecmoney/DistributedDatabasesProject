--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de sinónimos en todas las PDBs

connect ilap_bdd/ilap_bdd@cahabdd_s1
prompt =====================================
prompt Creando sinónimos para cahabdd_s1
prompt =====================================
@s-04-ilap-cah-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@cahabdd_s2
prompt =====================================
prompt Creando sinónimos para cahabdd_s2
prompt =====================================
@s-04-ilap-cah-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@mamgbd_s1
prompt =====================================
prompt Creando sinónimos para mamgbd_s1
prompt =====================================
@s-04-ilap-mmg-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@mamgbd_s2
prompt =====================================
prompt Creando sinónimos para mamgbd_s2
prompt =====================================
@s-04-ilap-mmg-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

Prompt Listo!
exit
