--@Autor: Carlos A. Hernández A. & Mmmgo A. Moreno Guerra
--@Fecha creación: 17/Junio/2020
--@Descripción: Creación de trigger para implementar transparencia de insercio

clear screen
whenever sqlerror exit rollback

Prompt ==============================
Prompt Creando triggers en cahabdd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@cahabdd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-cah-s1-sucursal-taller-trigger.sql
@s-06-ilap-cah-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-cah-s1-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en cahabdd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@cahabdd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-cah-s2-sucursal-taller-trigger.sql
@s-06-ilap-cah-s2-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-cah-s2-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en mamgbd_s1
Prompt ==============================
connect ilap_bdd/ilap_bdd@mamgbd_s1
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-mmg-s1-sucursal-taller-trigger.sql
@s-06-ilap-mmg-s1-sucursal-venta-trigger.sql
@s-06-ilap-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-mmg-s1-servicio-laptop-trigger.sql

Prompt ==============================
Prompt Creando triggers en mamgbd_s2
Prompt ==============================
connect ilap_bdd/ilap_bdd@mamgbd_s2
@s-06-ilap-sucursal-trigger.sql
@s-06-ilap-mmg-s2-sucursal-taller-trigger.sql
@s-06-ilap-mmg-s2-sucursal-venta-trigger.sql
@s-06-ilap-mmg-s2-laptop-trigger.sql
@s-06-ilap-laptop-inventario-trigger.sql
@s-06-ilap-historico-status-laptop-trigger.sql
@s-06-ilap-mmg-s2-servicio-laptop-trigger.sql

Prompt Listo!
exit