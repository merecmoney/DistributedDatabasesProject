--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 17/Junio/2020
--@Descripción: trigger para replicación síncrona de TIPO_ALMACENAMIENTO

create or replace trigger t_dml_tipo_almacenamiento
    instead of insert or update or delete on TIPO_ALMACENAMIENTO
declare
    v_count number;
begin
    case
        when inserting then
            v_count := 0;
            --replica local
            insert into TIPO_ALMACENAMIENTO_R1(tipo_almacenamiento_id,clave,descripcion)
            values (:new.tipo_almacenamiento_id,:new.clave,:new.descripcion);
            v_count := v_count + sql%rowcount;
            --replica 2
            insert into TIPO_ALMACENAMIENTO_R2(tipo_almacenamiento_id,clave,descripcion)
            values (:new.tipo_almacenamiento_id,:new.clave,:new.descripcion);
            v_count := v_count + sql%rowcount;
            --replica 3
            insert into TIPO_ALMACENAMIENTO_R3(tipo_almacenamiento_id,clave,descripcion)
            values (:new.tipo_almacenamiento_id,:new.clave,:new.descripcion);
            v_count := v_count + sql%rowcount;
            --replica 4
            insert into TIPO_ALMACENAMIENTO_R4(tipo_almacenamiento_id,clave,descripcion)
            values (:new.tipo_almacenamiento_id,:new.clave,:new.descripcion);
            v_count := v_count + sql%rowcount;

            if v_count <> 4 then
                raise_application_error(-20040,
                'Número incorrecto de registros insertados en tabla replicada: '
                ||v_count);
            end if;
        when deleting then
            v_count := 0;
            --replica local
            delete from TIPO_ALMACENAMIENTO_R1 where tipo_almacenamiento_id = :old.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 2
            delete from TIPO_ALMACENAMIENTO_R2 where tipo_almacenamiento_id = :old.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 3
            delete from TIPO_ALMACENAMIENTO_R3 where tipo_almacenamiento_id = :old.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 4
            delete from TIPO_ALMACENAMIENTO_R4 where tipo_almacenamiento_id = :old.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;

            if v_count <> 4 then
                raise_application_error(-20040,
                'Número incorrecto de registros eliminados en tabla replicada: '
                ||v_count);
            end if;
        when updating then
            --replica local
            v_count := 0;
            update TIPO_ALMACENAMIENTO_R1 set clave = :new.clave,descripcion =:new.descripcion,
            where tipo_almacenamiento_id = :new.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 2
            update TIPO_ALMACENAMIENTO_R2 set clave = :new.clave,descripcion =:new.descripcion,
            where tipo_almacenamiento_id = :new.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 3
            update TIPO_ALMACENAMIENTO_R3 set clave = :new.clave,descripcion =:new.descripcion,
            where tipo_almacenamiento_id = :new.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;
            --replica 4
            update TIPO_ALMACENAMIENTO_R4 set clave = :new.clave,descripcion =:new.descripcion,
            where tipo_almacenamiento_id = :new.tipo_almacenamiento_id;
            v_count := v_count + sql%rowcount;

            if v_count <> 4 then
                raise_application_error(-20040,
                'Número incorrecto de registros actualizados en tabla replicada: '
                ||v_count);
            end if;
    end case;
end;
/
show errors
