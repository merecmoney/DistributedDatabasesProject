--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Creación de vistas para tablas replicadas en cada PDB

-- TIPO_ALMACENAMIENTO
create or replace view TIPO_ALMACENAMIENTO as
  select tipo_almacenamiento_id,clave,descripcion
  from TIPO_ALMACENAMIENTO_R1;
  
-- TIPO_MONITOR
create or replace view TIPO_MONITOR as
  select tipo_monitor_id,clave,descripcion
  from TIPO_MONITOR_R1;

-- TIPO_PROCESADOR
create or replace view TIPO_PROCESADOR as
  select tipo_procesador_id, clave, descripcion
  from TIPO_PROCESADOR_R1;
  
-- TIPO_TARJETA_VIDEO
create or replace view TIPO_TARJETA_VIDEO as
  select tipo_tarjeta_video_id, clave, descripcion
  from TIPO_TARJETA_VIDEO_R1;
