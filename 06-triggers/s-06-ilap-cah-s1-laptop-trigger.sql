--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 16/05/2020
--@Descripción: Definición del trigger para operaciones DML para LAPTOP en CAHABDD_S1

create or replace trigger t_dml_laptop_cah_s1
instead of insert or update or delete on LAPTOP
declare
  v_count number;
  v_num_serie char(1);
begin
    case 
    when inserting then
      -- num_serie del nuevo registro
      v_num_serie := substr(:new.num_serie,1,1);

      -- Inserción local (CAHABDD_S1)
      if (v_num_serie = '0' or v_num_serie = '1') then
        insert into LAPTOP_F2(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,
          tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
        values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,
          :new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);
      -- Inserción remota (MAMGBD_S2)
      elsif (v_num_serie = '2' or v_num_serie = '3') then
        insert into LAPTOP_F3(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,
          tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
        values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,
          :new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);
      -- Inserción remota (MAMGBD_S1)
      elsif (v_num_serie = '4' or v_num_serie = '5') then
        insert into LAPTOP_F4(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,
          tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
        values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,
          :new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);
      -- Inserción remota (CAHABDD_S2)
      elsif (v_num_serie >= '6' or v_num_serie <= '9') then
        insert into LAPTOP_F5(laptop_id,num_serie,cantidad_ram,caracteristicas_extras,tipo_tarjeta_video_id,
          tipo_procesador_id,tipo_almacenamiento_id,tipo_monitor_id,laptop_reemplazo_id)
        values(:new.laptop_id,:new.num_serie,:new.cantidad_ram,:new.caracteristicas_extras,:new.tipo_tarjeta_video_id,
          :new.tipo_procesador_id,:new.tipo_almacenamiento_id,:new.tipo_monitor_id,:new.laptop_reemplazo_id);
      else
        raise_application_error(-20010,
          'Valor incorrecto para el campo NUM_SERIE'
          || v_num_serie
          || '. Debe iniciar un número entre 0 y 9');
      end if;

      -- Inserta remotamente (MAMGBD_S2) el BLOB haciedo uso de tabla temporal
			insert into TI_LAPTOP_F1(laptop_id,foto)
			values(:new.laptop_id,:new.foto);
      
      -- Inserta en el sitio remoto (MAMGBD_S2) a través de la tabla temporal
      insert into LAPTOP_F1
        select * from TI_LAPTOP_F1
        where laptop_id = :new.laptop_id;

      -- Elimina el registro BLOB de la tabla temporal
      delete from TI_LAPTOP_F1
      where laptop_id = :new.laptop_id;
      

    when updating then
      raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');

    when deleting then
      -- num_serie del viejo registro
      v_num_serie := substr(:old.num_serie,1,1);

      -- Eliminación local (CAHABDD_S1)
      if (v_num_serie = '0' or v_num_serie = '1') then
        delete from LAPTOP_F2 where laptop_id = :old.laptop_id;
      -- Eliminación remota (MAMGBD_S2)
      elsif (v_num_serie = '2' or v_num_serie = '3') then
        delete from LAPTOP_F3 where laptop_id = :old.laptop_id;
      -- Eliminación remota (MAMGBD_S1)
      elsif (v_num_serie = '4' or v_num_serie = '5') then
        delete from LAPTOP_F4 where laptop_id = :old.laptop_id;
      -- Eliminación remota (CAHABDD_S2)
      elsif (v_num_serie >= '6' or v_num_serie <= '9') then
        delete from LAPTOP_F5 where laptop_id = :old.laptop_id;
      else
        raise_application_error(-20010,
          'Valor incorrecto para el campo NUM_SERIE'
          || v_num_serie
          || '. Debe iniciar un número entre 0 y 9');
      end if;

      -- Elimina remotamente (MAMGBD_S2) del fragmento LAPTOP F1 junto con el BLOB
			delete from LAPTOP_F1
      where laptop_id = :old.laptop_id;

    end case;
end;
/