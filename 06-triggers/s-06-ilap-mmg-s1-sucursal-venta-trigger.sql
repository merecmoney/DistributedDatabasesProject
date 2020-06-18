--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 16/05/2020
--@Descripción: Definición del trigger para operaciones DML para SUCURSAL_VENTA
-- en MAMGBD_S1

create or replace trigger t_dml_sucursal_venta_mmg_s1
instead of insert or update or delete on SUCURSAL_VENTA
declare
  v_count number;
begin
    case
      when inserting then
        select count(*)
        into v_count
        from SUCURSAL_F3
        where sucursal_id = :new.sucursal_id;
        -- Inserción local (en MAMGBD_S1)
        if v_count > 0 then
          insert into SUCURSAL_VENTA_F3(sucursal_id, hora_apertura, hora_cierre)
          values (:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);
        else
          select count(*)
          into v_count
          from SUCURSAL_F1
          where sucursal_id = :new.sucursal_id;
          -- Inserción remota en CAHABDD_S1
          if v_count > 0 then
            insert into SUCURSAL_VENTA_F1(sucursal_id, hora_apertura, hora_cierre)
            values (:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);
          else
              select count(*)
              into v_count
              from SUCURSAL_F2
              where sucursal_id = :new.sucursal_id;
              -- Inserción remota en CAHABDD_S2
              if v_count > 0 then
                insert into SUCURSAL_VENTA_F2(sucursal_id, hora_apertura, hora_cierre)
                values (:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);
              else
                select count(*)
                into v_count
                from SUCURSAL_F4
                where sucursal_id = :new.sucursal_id;
                -- Inserción remota en MAMGBD_S2
                if v_count > 0 then
                  insert into SUCURSAL_VENTA_F4(sucursal_id, hora_apertura, hora_cierre)
                  values (:new.sucursal_id, :new.hora_apertura, :new.hora_cierre);
                else
                  raise_application_error(-20020, 'Error de integridad para el campo SUCURSAL_ID: '
                  || :new.sucursal_id || ' No se encontró el registro padre en los fragmentos');
                end if;
              end if;
          end if;
        end if;

      when deleting then
        select count(*)
        into v_count
        from SUCURSAL_F3
        where sucursal_id = :old.sucursal_id;
        -- Delete local (en MAMGBD_S1)
        if v_count > 0 then
          delete from SUCURSAL_VENTA_F3
          where sucursal_id = :old.sucursal_id;
        else
          select count(*)
          into v_count
          from SUCURSAL_F1
          where sucursal_id = :old.sucursal_id;
          -- Delete remoto en CAHABDD_S1
          if v_count > 0 then
            delete from SUCURSAL_VENTA_F1
            where sucursal_id = :old.sucursal_id;
          else
            select count(*)
            into v_count
            from SUCURSAL_F2
            where sucursal_id = :old.sucursal_id;

            -- Delete remoto en CAHABDD_S2
            if v_count > 0 then
              delete from SUCURSAL_VENTA_F2
              where sucursal_id = :old.sucursal_id;
            else
              select count(*)
              into v_count
              from SUCURSAL_F4
              where sucursal_id = :old.sucursal_id;

              -- Delete remoto en MAMGBD_S2
              if v_count > 0 then
                delete from SUCURSAL_VENTA_F4
                where sucursal_id = :old.sucursal_id;
              else
                  raise_application_error(-20020, 'Error de integridad para el campo SUCURSAL_ID: '
                  || :old.sucursal_id || ' No se encontró el registro padre en los fragmentos');
              end if;
            end if;
          end if;
        end if;

      when updating then
        raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');
    end case;
end;
/
