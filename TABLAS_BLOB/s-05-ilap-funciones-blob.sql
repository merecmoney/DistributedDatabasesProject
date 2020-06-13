--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 13/06/2020
--@Descripción: Definición de funciones para acceso a BLOBs

Prompt creando funcion para extraer dato BLOB de foto_f1
create or replace function get_remote_foto_f1_by_id(p_laptop_id in number )
return blob is
pragma autonomous_transaction;
v_temp_pdf blob;
begin
--asegura que no haya registros
delete from ts_laptop_f1;
--inserta los datos obtenidos del fragmento remoto a la tabla temporal.
insert into ts_laptop_f1
select laptop_id,foto
from laptop_f1
where laptop_id = p_laptop_id;
--obtiene el registro de la tabla temporal y lo regresa como blob
select foto into v_temp_pdf
from ts_laptop_f1
where laptop_id = p_laptop_id;
--elimina los registros de la tabla temporal una vez que han sido obtenidos.
delete from ts_laptop_f1;
--termina txn autónoma.
commit;
return v_temp_pdf;
exception
when others then
--si ocurre error, termina la txn autónoma.
rollback;
raise;
end;
/
show errors

Prompt creando funcion para extraer dato BLOB de servicio_laptop_f1
create or replace function get_remote_serv_lap_f1_by_id(
p_num_servicio in number, p_laptop_id in number) return blob is
pragma autonomous_transaction;
v_temp_pdf blob;
begin
--asegura que no haya registros
delete from ts_servicio_laptop_f1;
--inserta los datos obtenidos del fragmento remoto a la tabla temporal.
insert into ts_servicio_laptop_f1(num_servicio,laptop_id,factura)
select num_servicio,laptop_id,factura
from servicio_laptop_f1
where num_servicio = p_num_servicio
and laptop_id = p_laptop_id;
--obtiene el registro de la tabla temporal y lo regresa como blob
select factura into v_temp_pdf
from ts_servicio_laptop_f1
where num_servicio = p_num_servicio
and laptop_id = p_laptop_id;
--elimina los registros de la tabla temporal
delete from ts_servicio_laptop_f1;
--termina txn autónoma
exception
when others then
--si ocurre error, termina la txn autónoma.
rollback;
raise;
end;
/
show errors
--completar