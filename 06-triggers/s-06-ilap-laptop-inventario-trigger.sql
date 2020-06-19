--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 16/05/2020
--@Descripción: Definición del trigger para operaciones DML para
-- LAPTOP_INVENTARIO

create or replace trigger t_dml_laptop_inventario
instead of insert or update or delete on LAPTOP_INVENTARIO
declare
begin
    case
        when inserting then
            insert into LAPTOP_INVENTARIO_F1 (laptop_id, rfc_cliente, num_tarjeta)
            values (:new.laptop_id, :new.rfc_cliente, :new.num_tarjeta);

            insert into LAPTOP_INVENTARIO_F2 (laptop_id, fecha_status,
                status_laptop_id, sucursal_id)
            values (:new.laptop_id, :new.fecha_status, :new.status_laptop_id,
                :new.sucursal_id);

        when deleting  then
            delete from LAPTOP_INVENTARIO_F1
            where laptop_id = :old.laptop_id;

            delete from LAPTOP_INVENTARIO_F2
            where laptop_id = :old.laptop_id;

        when updating then
            raise_application_error(-20030, 'Las operaciones UPDATE no tienen soporte aun.');
    end case;
end;
/
show errors
