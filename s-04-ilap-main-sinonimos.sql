--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de sinónimos en todas las PDBs

connect ilap_bdd/ilap_bdd@cahabdd_s1
prompt =====================================
prompt Creando sinónimos para cahabdd_s1
prompt =====================================
drop synonym TIPO_ALMACENAMIENTO_R_1;
drop synonym TIPO_ALMACENAMIENTO_R_2;
drop synonym TIPO_ALMACENAMIENTO_R_3;
drop synonym TIPO_ALMACENAMIENTO_R_4;
drop synonym TIPO_MONITOR_R_1;
drop synonym TIPO_MONITOR_R_2;
drop synonym TIPO_MONITOR_R_3;
drop synonym TIPO_MONITOR_R_4;
drop synonym TIPO_PROCESADOR_R_1;
drop synonym TIPO_PROCESADOR_R_2;
drop synonym TIPO_PROCESADOR_R_3;
drop synonym TIPO_PROCESADOR_R_4;
drop synonym TIPO_TARJETA_VIDEO_R_1;
drop synonym TIPO_TARJETA_VIDEO_R_2;
drop synonym TIPO_TARJETA_VIDEO_R_3;
drop synonym TIPO_TARJETA_VIDEO_R_4;

@s-04-ilap-cah-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@cahabdd_s2
prompt =====================================
prompt Creando sinónimos para cahabdd_s2
prompt =====================================
drop synonym TIPO_ALMACENAMIENTO_R_1;
drop synonym TIPO_ALMACENAMIENTO_R_2;
drop synonym TIPO_ALMACENAMIENTO_R_3;
drop synonym TIPO_ALMACENAMIENTO_R_4;
drop synonym TIPO_MONITOR_R_1;
drop synonym TIPO_MONITOR_R_2;
drop synonym TIPO_MONITOR_R_3;
drop synonym TIPO_MONITOR_R_4;
drop synonym TIPO_PROCESADOR_R_1;
drop synonym TIPO_PROCESADOR_R_2;
drop synonym TIPO_PROCESADOR_R_3;
drop synonym TIPO_PROCESADOR_R_4;
drop synonym TIPO_TARJETA_VIDEO_R_1;
drop synonym TIPO_TARJETA_VIDEO_R_2;
drop synonym TIPO_TARJETA_VIDEO_R_3;
drop synonym TIPO_TARJETA_VIDEO_R_4;

@s-04-ilap-cah-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@mamgbd_s1
prompt =====================================
prompt Creando sinónimos para mamgbd_s1
prompt =====================================
drop synonym TIPO_ALMACENAMIENTO_R_1;
drop synonym TIPO_ALMACENAMIENTO_R_2;
drop synonym TIPO_ALMACENAMIENTO_R_3;
drop synonym TIPO_ALMACENAMIENTO_R_4;
drop synonym TIPO_MONITOR_R_1;
drop synonym TIPO_MONITOR_R_2;
drop synonym TIPO_MONITOR_R_3;
drop synonym TIPO_MONITOR_R_4;
drop synonym TIPO_PROCESADOR_R_1;
drop synonym TIPO_PROCESADOR_R_2;
drop synonym TIPO_PROCESADOR_R_3;
drop synonym TIPO_PROCESADOR_R_4;
drop synonym TIPO_TARJETA_VIDEO_R_1;
drop synonym TIPO_TARJETA_VIDEO_R_2;
drop synonym TIPO_TARJETA_VIDEO_R_3;
drop synonym TIPO_TARJETA_VIDEO_R_4;

@s-04-ilap-mmg-s1-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

connect ilap_bdd/ilap_bdd@mamgbd_s2
prompt =====================================
prompt Creando sinónimos para mamgbd_s2
prompt =====================================
drop synonym TIPO_ALMACENAMIENTO_R_1;
drop synonym TIPO_ALMACENAMIENTO_R_2;
drop synonym TIPO_ALMACENAMIENTO_R_3;
drop synonym TIPO_ALMACENAMIENTO_R_4;
drop synonym TIPO_MONITOR_R_1;
drop synonym TIPO_MONITOR_R_2;
drop synonym TIPO_MONITOR_R_3;
drop synonym TIPO_MONITOR_R_4;
drop synonym TIPO_PROCESADOR_R_1;
drop synonym TIPO_PROCESADOR_R_2;
drop synonym TIPO_PROCESADOR_R_3;
drop synonym TIPO_PROCESADOR_R_4;
drop synonym TIPO_TARJETA_VIDEO_R_1;
drop synonym TIPO_TARJETA_VIDEO_R_2;
drop synonym TIPO_TARJETA_VIDEO_R_3;
drop synonym TIPO_TARJETA_VIDEO_R_4;

@s-04-ilap-mmg-s2-sinonimos.sql
@s-04-ilap-valida-sinonimos.sql

Prompt Listo!
exit
