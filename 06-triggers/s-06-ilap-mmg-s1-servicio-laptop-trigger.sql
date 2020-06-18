--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 16/05/2020
--@Descripción: Definición del trigger para operaciones DML para SERVICIO_LAPTOP
-- en MAMGBD_S1

create or replace trigger servicio_laptop_mmg_s1
instead of insert or update or delete SERVICIO_LAPTOP
declare
    v_count number;
begin
    case
        when inserting then
            select count(1)
            into v_count
            from LAPTOP_F4
            where laptop_id = :new.laptop_id;

            -- Inserción local (en MAMGBD_S1)
            if v_count > 0 then
                insert into SERVICIO_LAPTOP_F3(num_servicio, laptop_id, importe,
                diagnostico, factura, sucursal_id)
                values (:new.num_servicio, :new.laptop_id, :new.importe,
                :new.diagnostico, :new.factura, :new.sucursal_id);

            else
                select count(1)
                into v_count
                from LAPTOP_F3
                where laptop_id = :new.laptop_id;

                -- Inserción remota en MAMGBD_S2
                if v_count > 0 then
                    insert into TI_SERVICIO_LAPTOP_F2(num_servicio, laptop_id,
                    importe, diagnostico, factura, sucursal_id)
                    values (:new.num_servicio, :new.laptop_id, :new.importe,
                    :new.diagnostico, :new.factura, :new.sucursal_id);

                    insert into SERVICIO_LAPTOP_F2
                    select from *
                    from TI_SERVICIO_LAPTOP_F2
                    where num_servicio = :new.num_servicio
                    and laptop_id = :new.laptop_id;

                    delete from TI_SERVICIO_LAPTOP_F2
                    where num_servicio = :new.num_servicio
                    and laptop_id = :new.laptop_id;
                else
                    select count(1)
                    into v_count
                    from LAPTOP_F2
                    where laptop_id = :new.laptop_id;

                    -- Inserción remota en CAHABDD_S1
                    if v_count > 0 then
                        insert into TI_SERVICIO_LAPTOP_F1(num_servicio, laptop_id,
                        importe, diagnostico, factura, sucursal_id)
                        values (:new.num_servicio, :new.laptop_id, :new.importe,
                        :new.diagnostico, :new.factura, :new.sucursal_id);

                        insert into SERVICIO_LAPTOP_F1
                        select from *
                        from TI_SERVICIO_LAPTOP_F1
                        where num_servicio = :new.num_servicio
                        and laptop_id = :new.laptop_id;

                        delete from TI_SERVICIO_LAPTOP_F1
                        where num_servicio = :new.num_servicio
                        and laptop_id = :new.laptop_id;
                    else
                        select count(1)
                        into v_count
                        from LAPTOP_F5
                        where laptop_id = :new.laptop_id;

                        -- Inserción remota en CAHABDD_S2
                        if v_count > 0 then
                            insert into TI_SERVICIO_LAPTOP_F4(num_servicio, laptop_id,
                            importe, diagnostico, factura, sucursal_id)
                            values (:new.num_servicio, :new.laptop_id, :new.importe,
                            :new.diagnostico, :new.factura, :new.sucursal_id);

                            insert into SERVICIO_LAPTOP_F4
                            select from *
                            from TI_SERVICIO_LAPTOP_F4
                            where num_servicio = :new.num_servicio
                            and laptop_id = :new.laptop_id;

                            delete from TI_SERVICIO_LAPTOP_F4
                            where num_servicio = :new.num_servicio
                            and laptop_id = :new.laptop_id;
                        else
                            raise_application_error(-20020, 'Error de integridad'
                            || ' para el campo LAPTOP_ID: '
                            || :new.sucursal_id
                            || ' No se encontró el registro padre en los fragmentos');
                        end if;
                    end if;
                end if;
            end if;
        when deleting then
            select count(1)
            into v_count
            from LAPTOP_F4
            where laptop_id = :old.laptop_id;

            -- Delete local (en MAMGBD_S1)
            if v_count > 0 then
                delete from SERVICIO_LAPTOP_F3
                where num_servicio = :old.num_servicio
                and laptop_id = :old.laptop_id;
            else
                select count(1)
                into v_count
                from LAPTOP_F3
                where laptop_id = :old.laptop_id;

                -- Delete remoto en MAMGBD_S2
                if v_count > 0 then
                    delete from SERVICIO_LAPTOP_F2
                    where num_servicio = :old.num_servicio
                    and laptop_id = :old.laptop_id;
                else
                    select count(1)
                    into v_count
                    from LAPTOP_F2
                    where laptop_id = :old.laptop_id;

                    -- Delete remoto en CAHABDD_S1
                    if v_count > 0 then
                        delete from SERVICIO_LAPTOP_F1
                        where num_servicio = :old.num_servicio
                        and laptop_id = :old.laptop_id;
                    else
                        select count(1)
                        into v_count
                        from LAPTOP_F5
                        where laptop_id = :old.laptop_id;

                        -- Delete remoto en CAHABDD_S2
                        if v_count > 0 then
                            delete from SERVICIO_LAPTOP_F4
                            where num_servicio = :old.num_servicio
                            and laptop_id = :old.laptop_id;
                        else
                            raise_application_error(-20020, 'Error de integridad'
                            || ' para el campo LAPTOP_ID: '
                            || :new.sucursal_id
                            || ' No se encontró el registro padre en los fragmentos');
                        end if;
                    end if;
                end if;
            end if;

    when updating then
        raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');
    end case;
end;
/
show errors
