--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 17/05/2020
--@Descripción: Definición del trigger para operaciones DML para HISTORICO_STATUS_LAPTOP

create or replace trigger t_dml_historico_status_laptop
instead of insert or update or delete on HISTORICO_STATUS_LAPTOP
declare

begin
    case
        when inserting then
            -- Inserción en CAHABDD_S2
            if (to_char(:new.fecha_status,'YYYY') <= '2009') then
                insert into HISTORICO_STATUS_LAPTOP_F1(historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id)
                values(:new.historico_status_laptop_id,:new.fecha_status,:new.status_laptop_id,:new.laptop_id);
            -- Inserción en CAHABDD_S1
            elsif (to_char(:new.fecha_status,'YYYY') > '2009') then
                insert into HISTORICO_STATUS_LAPTOP_F2(historico_status_laptop_id,fecha_status,status_laptop_id,laptop_id)
                values(:new.historico_status_laptop_id,:new.fecha_status,:new.status_laptop_id,:new.laptop_id);
            else
                raise_application_error(-20010,
                    'Valor incorrecto para el año de fecha_status'
                    || :new.fecha_status);
            end if;
        when deleting then
            -- Inserción en CAHABDD_S2
            if (to_char(:old.fecha_status,'YYYY') <= '2009') then
                delete from HISTORICO_STATUS_LAPTOP_F1 where historico_status_laptop_id = :old.historico_status_laptop_id;
            -- Inserción en CAHABDD_S1
            elsif (to_char(:old.fecha_status,'YYYY') > '2009') then
                delete from HISTORICO_STATUS_LAPTOP_F2 where historico_status_laptop_id = :old.historico_status_laptop_id;
            else
                raise_application_error(-20010,
                    'Valor incorrecto para el año de fecha_status'
                    || :old.fecha_status);
            end if;
        when updating then
            raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');
end;
/
show errors
