--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de vistas que no requieren manejo de BLOBs.
--  SERVICIO_LAPTOP y LAPTOP REQUIEREN MANEJO DE BLOBS

--SUCURSAL
create or replace view SUCURSAL as
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url from SUCURSAL_f1
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url from SUCURSAL_f2
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url from SUCURSAL_f3
  union all
  select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url from SUCURSAL_f4;

-- LAPTOP_INVENTARIO
create or replace view LAPTOP_INVENTARIO as
  select f1.laptop_id, f1.rfc_cliente, f1.num_tarjeta, f2.fecha_status,
    f2.status_laptop_id, f2.sucursal_id
    from LAPTOP_INVENTARIO_F1 f1
    join LAPTOP_INVENTARIO_F2 f2
    on f1.laptop_id = f2.laptop_id;

-- HISTORICO_STATUS_LAPTOP
create or replace view HISTORICO_STATUS_LAPTOP as
  select historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id from HISTORICO_STATUS_LAPTOP_F1
  union all
  select historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id from HISTORICO_STATUS_LAPTOP_F2;

-- SUCURSAL_TALLER
create or replace view SUCURSAL_TALLER as
  select sucursal_id,dia_descanso,telefono_atencion from SUCURSAL_TALLER_F1
  union all
  select sucursal_id,dia_descanso,telefono_atencion from SUCURSAL_TALLER_F2
  union all
  select sucursal_id,dia_descanso,telefono_atencion from SUCURSAL_TALLER_F3
  union all
  select sucursal_id,dia_descanso,telefono_atencion from SUCURSAL_TALLER_F4;

-- SUCURSAL_VENTA
create or replace view SUCURSAL_VENTA as
  select sucursal_id,hora_apertura,hora_cierre from SUCURSAL_VENTA_F1
  union all
  select sucursal_id,hora_apertura,hora_cierre from SUCURSAL_VENTA_F2
  union all
  select sucursal_id,hora_apertura,hora_cierre from SUCURSAL_VENTA_F3
  union all
  select sucursal_id,hora_apertura,hora_cierre from SUCURSAL_VENTA_F4;
