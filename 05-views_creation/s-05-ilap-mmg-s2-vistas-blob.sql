--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Definición de vistas con acceso a datos BLOB para el sitio
-- mamgdb_s2

create or replace view laptop as
  select f1.laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
    tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
    tipo_monitor_id,laptop_reemplazo_id, f1.foto
  from (
    select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
      tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
      tipo_monitor_id,laptop_reemplazo_id
    from laptop_f2
    union all
    select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
      tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
      tipo_monitor_id,laptop_reemplazo_id
    from laptop_f3
    union all
    select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
      tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
      tipo_monitor_id,laptop_reemplazo_id
    from laptop_f4
    union
    select laptop_id,num_serie,cantidad_ram,caracteristicas_extras,
      tipo_tarjeta_video_id,tipo_procesador_id,tipo_almacenamiento_id,
      tipo_monitor_id,laptop_reemplazo_id
    from laptop_f5
  ) q1
  join laptop_f1 f1
  on q1.laptop_id = f1.laptop_id;

create or replace view servicio_laptop as
  select num_servicio,laptop_id,importe,diagnostico,
    get_remote_serv_lap_f1_by_id(num_servicio,laptop_id) factura,
    sucursal_id
  from servicio_laptop_f1
  union all
  select num_servicio,laptop_id,importe,diagnostico,factura,sucursal_id
  from servicio_laptop_f2
  union all
  select num_servicio,laptop_id,importe,diagnostico,
    get_remote_serv_lap_f3_by_id(num_servicio,laptop_id) factura,
    sucursal_id
  from servicio_laptop_f3
  union all
  select num_servicio,laptop_id,importe,diagnostico,
    get_remote_serv_lap_f4_by_id(num_servicio,laptop_id) factura,
    sucursal_id
  from servicio_laptop_f4;
