--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Script de validacion de sinonimos

Prompt validando sinonimos para SUCURSAL
select
(select count(1) from SUCURSAL_F1) as SUCURSAL_F1,
(select count(1) from SUCURSAL_F2) as SUCURSAL_F2,
(select count(1) from SUCURSAL_F3) as SUCURSAL_F3,
(select count(1) from SUCURSAL_F4) as SUCURSAL_F4
from dual;

Prompt validando sinonimos para LAPTOP_INVENTARIO
select
(select count(1) from LAPTOP_INVENTARIO_F1) as LAPTOP_INVENTARIO_F1,
(select count(1) from LAPTOP_INVENTARIO_F2) as LAPTOP_INVENTARIO_F2
from dual;

Prompt validando sinonimos para HISTORICO_STATUS_LAPTOP
select
(select count(1) from HISTORICO_STATUS_LAPTOP_F1) as HISTORICO_STATUS_LAPTOP_F1,
(select count(1) from HISTORICO_STATUS_LAPTOP_F2) as HISTORICO_STATUS_LAPTOP_F2
from dual;

Prompt validando sinonimos para SERVICIO_LAPTOP
select
(select count(1) from SERVICIO_LAPTOP_F1) as SERVICIO_LAPTOP_F1,
(select count(1) from SERVICIO_LAPTOP_F2) as SERVICIO_LAPTOP_F2,
(select count(1) from SERVICIO_LAPTOP_F4) as SERVICIO_LAPTOP_F4,
(select count(1) from SERVICIO_LAPTOP_F3) as SERVICIO_LAPTOP_F3
from dual;

Prompt validando sinonimos para LAPTOP
select
(select count(1) from LAPTOP_F1) as LAPTOP_F1,
(select count(1) from LAPTOP_F2) as LAPTOP_F2,
(select count(1) from LAPTOP_F3) as LAPTOP_F3,
(select count(1) from LAPTOP_F4) as LAPTOP_F4,
(select count(1) from LAPTOP_F5) as LAPTOP_F5
from dual;

Prompt validando sinonimos para SUCURSAL_TALLER
select
(select count(1) from SUCURSAL_TALLER_F1) as SUCURSAL_TALLER_F1,
(select count(1) from SUCURSAL_TALLER_F2) as SUCURSAL_TALLER_F2,
(select count(1) from SUCURSAL_TALLER_F3) as SUCURSAL_TALLER_F3,
(select count(1) from SUCURSAL_TALLER_F4) as SUCURSAL_TALLER_F4
from dual;

Prompt validando sinonimos para SUCURSAL_VENTA
select
(select count(1) from SUCURSAL_VENTA_F1) as SUCURSAL_VENTA_F1,
(select count(1) from SUCURSAL_VENTA_F2) as SUCURSAL_VENTA_F2,
(select count(1) from SUCURSAL_VENTA_F3) as SUCURSAL_VENTA_F3,
(select count(1) from SUCURSAL_VENTA_F4) as SUCURSAL_VENTA_F4
from dual;

Prompt validando sinonimos para TIPO_ALMACENAMIENTO
select
(select count(1) from TIPO_ALMACENAMIENTO_R1) as TIPO_ALMACENAMIENTO_R1,
(select count(1) from TIPO_ALMACENAMIENTO_R2) as TIPO_ALMACENAMIENTO_R2,
(select count(1) from TIPO_ALMACENAMIENTO_R3) as TIPO_ALMACENAMIENTO_R3,
(select count(1) from TIPO_ALMACENAMIENTO_R4) as TIPO_ALMACENAMIENTO_R4
from dual;

Prompt validando sinonimos para TIPO_MONITOR
select
(select count(1) from TIPO_MONITOR_R1) as TIPO_MONITOR_R1,
(select count(1) from TIPO_MONITOR_R2) as TIPO_MONITOR_R2,
(select count(1) from TIPO_MONITOR_R3) as TIPO_MONITOR_R3,
(select count(1) from TIPO_MONITOR_R4) as TIPO_MONITOR_R4
from dual;

Prompt validando sinonimos para TIPO_PROCESADOR
select
(select count(1) from TIPO_PROCESADOR_R1) as TIPO_PROCESADOR_R1,
(select count(1) from TIPO_PROCESADOR_R2) as TIPO_PROCESADOR_R2,
(select count(1) from TIPO_PROCESADOR_R3) as TIPO_PROCESADOR_R3,
(select count(1) from TIPO_PROCESADOR_R4) as TIPO_PROCESADOR_R4
from dual;

Prompt validando sinonimos para TIPO_TARJETA_VIDEO
select
(select count(1) from TIPO_TARJETA_VIDEO_R1) as TIPO_TARJETA_VIDEO_R1,
(select count(1) from TIPO_TARJETA_VIDEO_R2) as TIPO_TARJETA_VIDEO_R2,
(select count(1) from TIPO_TARJETA_VIDEO_R3) as TIPO_TARJETA_VIDEO_R3,
(select count(1) from TIPO_TARJETA_VIDEO_R4) as TIPO_TARJETA_VIDEO_R4
from dual;
