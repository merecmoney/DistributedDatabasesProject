--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 16/Junio/2020
--@Descripción: Creación del trigger para la vista SUCURSAL
-- soporta las operaciones DML INSERT, UPDATE, DELETE

create or replace trigger t_dml_sucursal
instead of insert or update or delete on SUCURSAL
declare
    v_clave char(2);
begin
    case
        when inserting then
            -- ver la clave del nuevo registro
            v_clave := substr(:new.clave,3,2);
            -- Inserción en CAHABDD_S1
            if (:new.es_taller = 1 and :new.es_venta = 1) or v_clave = 'NO' then

                insert into SUCURSAL_F1 (sucursal_id, clave, es_taller,
                    es_venta, nombre, latitud, longitud, url)
                values (:new.sucursal_id, :new.clave, :new.es_taller,
                    :new.es_venta, :new.nombre, :new.latitud,
                    :new.longitud, :new.url);
            -- Inserción en CAHABDD_S2
            elsif (:new.es_taller = 0 or :new.es_venta = 0)
                and v_clave = 'EA' then

                insert into SUCURSAL_F2 (sucursal_id, clave, es_taller,
                    es_venta, nombre, latitud, longitud, url)
                values (:new.sucursal_id, :new.clave, :new.es_taller,
                    :new.es_venta, :new.nombre, :new.latitud,
                    :new.longitud, :new.url);
            -- Inserción en MAMGBD_S1
            elsif (:new.es_taller = 0 or :new.es_venta = 0)
                and v_clave = 'WS' then

                insert into SUCURSAL_F3 (sucursal_id, clave, es_taller,
                    es_venta, nombre, latitud, longitud, url)
                values (:new.sucursal_id, :new.clave, :new.es_taller,
                    :new.es_venta, :new.nombre, :new.latitud,
                    :new.longitud, :new.url);
            -- Inserción en MAMGBD_S2
            elsif (:new.es_taller = 0 or :new.es_venta = 0)
                and v_clave = 'SO' then

                insert into SUCURSAL_F4 (sucursal_id, clave, es_taller,
                    es_venta, nombre, latitud, longitud, url)
                values (:new.sucursal_id, :new.clave, :new.es_taller,
                    :new.es_venta, :new.nombre, :new.latitud,
                    :new.longitud, :new.url);
            else
                if :new.es_taller > 1 or :new.es_taller < 0 then
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo es_taller'
                    || :new.es_taller
                    || '. Debe tener un valor de 0 o 1');
                elsif :new.es_venta > 1 or :new.es_venta < 0 then
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo es_venta'
                    || :new.es_venta
                    || '. Debe tener un valor de 0 o 1');
                else
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo clave: '
                    || :new.clave
                    || 'Los últimos dos carácteres de la cadena deben ser'
                    || ' NO, EA, WS o SO');
                end if;
            end if;
        when deleting then
            -- ver la clave del registro a borrar
            v_clave := substr(:old.clave,3,2);
            -- Delete en CAHABDD_S1
            if (:old.es_taller = 1 and :old.es_venta = 1) or v_clave = 'NO' then
                delete from SUCURSAL_F1
                where sucursal_id = :old.sucursal_id;
            -- Delete en CAHABDD_S2
            elsif (:old.es_taller = 0 or :old.es_venta = 0)
                and v_clave = 'EA' then
                    delete from SUCURSAL_F2
                    where sucursal_id = :old.sucursal_id;
            -- Delete en MAMGBD_S1
            elsif (:old.es_taller = 0 or :old.es_venta = 0)
                and v_clave = 'WS' then
                    delete from SUCURSAL_F3
                    where sucursal_id = :old.sucursal_id;
            -- Delete en MAMGBD_S2
            elsif (:old.es_taller = 0 or :old.es_venta = 0)
                and v_clave = 'SO' then
                    delete from SUCURSAL_F4
                    where sucursal_id = :old.sucursal_id;
            else
                if :old.es_taller > 1 or :old.es_taller < 0 then
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo es_taller'
                    || :old.es_taller
                    || '. Debe tener un valor de 0 o 1');
                elsif :old.es_venta > 1 or :old.es_venta < 0 then
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo es_venta'
                    || :old.es_venta
                    || '. Debe tener un valor de 0 o 1');
                else
                    raise_application_error(-20010,
                    'Valor incorrecto para el campo clave: '
                    || :old.clave
                    || 'Los últimos dos carácteres de la cadena deben ser'
                    || ' NO, EA, WS o SO');
                end if;
            end if;
        when updating then
            raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');
    end case;
end;
/
show errors
