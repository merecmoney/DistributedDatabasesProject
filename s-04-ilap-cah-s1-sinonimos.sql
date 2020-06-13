--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de sinónimos en PDB cahabdd_s1

-- SUCURSAL
create or replace synonym SUCURSAL_F1 for SUCURSAL_F1_CAH_S1;
create or replace synonym SUCURSAL_F2 for SUCURSAL_F2_CAH_S2@cahabdd_s2;
create or replace synonym SUCURSAL_F3 for SUCURSAL_F3_MMG_S1@mamgbd_s1;
create or replace synonym SUCURSAL_F4 for SUCURSAL_F4_MMG_S2@mamgbd_s2;

-- LAPTOP_INVENTARIO
create or replace synonym LAPTOP_INVENTARIO_F1 for LAPTOP_INVENTARIO_F1_MMG_S1@mamgbd_s1;
create or replace synonym LAPTOP_INVENTARIO_F2 for LAPTOP_INVENTARIO_F2_CAH_S1;

-- HISTORICO_STATUS_LAPTOP
create or replace synonym HISTORICO_STATUS_LAPTOP_F1 for HISTORICO_STATUS_LAPTOP_F1_S2@cahabdd_s2;
create or replace synonym HISTORICO_STATUS_LAPTOP_F2 for HISTORICO_STATUS_LAPTOP_F2_S1;

-- SERVICIO_LAPTOP
create or replace synonym SERVICIO_LAPTOP_F1 for SERVICIO_LAPTOP_F1_CAH_S1;
create or replace synonym SERVICIO_LAPTOP_F2 for SERVICIO_LAPTOP_F2_MMG_S2@mamgbd_s2;
create or replace synonym SERVICIO_LAPTOP_F4 for SERVICIO_LAPTOP_F4_CAH_S2@cahabdd_s2;
create or replace synonym SERVICIO_LAPTOP_F3 for SERVICIO_LAPTOP_F3_MMG_S1@mamgbd_s1;

-- LAPTOP
create or replace synonym LAPTOP_F1 for LAPTOP_F1_MMG_S2@mamgbd_s2;
create or replace synonym LAPTOP_F2 for LAPTOP_F2_CAH_S1;
create or replace synonym LAPTOP_F3 for LAPTOP_F3_MMG_S2@mamgbd_s2;
create or replace synonym LAPTOP_F4 for LAPTOP_F4_MMG_S1@mamgbd_s1;
create or replace synonym LAPTOP_F5 for LAPTOP_F5_CAH_S2@cahabdd_s2;

-- SUCURSAL_TALLER
create or replace synonym SUCURSAL_TALLER_F1 for SUCURSAL_TALLER_F1_CAH_S1;
create or replace synonym SUCURSAL_TALLER_F2 for SUCURSAL_TALLER_F2_CAH_2@cahabdd_s2;
create or replace synonym SUCURSAL_TALLER_F3 for SUCURSAL_TALLER_F3_MMG_S1@mamgbd_s1;
create or replace synonym SUCURSAL_TALLER_F4 for SUCURSAL_TALLER_F4_MMG_S2@mamgbd_s2;

-- SUCURSAL_VENTA
create or replace synonym SUCURSAL_VENTA_F1 for SUCURSAL_VENTA_F1_CAH_S1;
create or replace synonym SUCURSAL_VENTA_F2 for SUCURSAL_VENTA_F2_CAH_S2@cahabdd_s2;
create or replace synonym SUCURSAL_VENTA_F3 for SUCURSAL_VENTA_F3_MMG_S1@mamgbd_s1;
create or replace synonym SUCURSAL_VENTA_F4 for SUCURSAL_VENTA_F4_MMG_S2@mamgbd_s2;

-- TIPO_ALMACENAMIENTO
create or replace synonym TIPO_ALMACENAMIENTO_R1 for TIPO_ALMACENAMIENTO_R_CAH_S1;
create or replace synonym TIPO_ALMACENAMIENTO_R2 for TIPO_ALMACENAMIENTO_R_CAH_S2@cahabdd_s2;
create or replace synonym TIPO_ALMACENAMIENTO_R3 for TIPO_ALMACENAMIENTO_R_MMG_S1@mamgbd_s1;
create or replace synonym TIPO_ALMACENAMIENTO_R4 for TIPO_ALMACENAMIENTO_R_MMG_S2@mamgbd_s2;

-- TIPO_MONITOR
create or replace synonym TIPO_MONITOR_R1 for TIPO_MONITOR_R_CAH_S1;
create or replace synonym TIPO_MONITOR_R2 for TIPO_MONITOR_R_CAH_S2@cahabdd_s2;
create or replace synonym TIPO_MONITOR_R3 for TIPO_MONITOR_R_MMG_S1@mamgbd_s1;
create or replace synonym TIPO_MONITOR_R4 for TIPO_MONITOR_R_MMG_S2@mamgbd_s2;

-- TIPO_PROCESADOR
create or replace synonym TIPO_PROCESADOR_R1 for TIPO_PROCESADOR_R_CAH_S1;
create or replace synonym TIPO_PROCESADOR_R2 for TIPO_PROCESADOR_R_CAH_S2@cahabdd_s2;
create or replace synonym TIPO_PROCESADOR_R3 for TIPO_PROCESADOR_R_MMG_S1@mamgbd_s1;
create or replace synonym TIPO_PROCESADOR_R4 for TIPO_PROCESADOR_R_MMG_S2@mamgbd_s2;

-- TIPO_TARJETA_VIDEO
create or replace synonym TIPO_TARJETA_VIDEO_R1 for TIPO_TARJETA_VIDEO_R_CAH_S1;
create or replace synonym TIPO_TARJETA_VIDEO_R2 for TIPO_TARJETA_VIDEO_R_CAH_S2@cahabdd_s2;
create or replace synonym TIPO_TARJETA_VIDEO_R3 for TIPO_TARJETA_VIDEO_R_MMG_S1@mamgbd_s1;
create or replace synonym TIPO_TARJETA_VIDEO_R4 for TIPO_TARJETA_VIDEO_R_MMG_S2@mamgbd_s2;
