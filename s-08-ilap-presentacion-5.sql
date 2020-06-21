--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 20/06/2020
--@Descripción: Script de eliminación de datos

Prompt Seleccionar la PDB para realizar la eliminación de datos

connect ilap_bdd/ilap_bdd@&pdb

set serveroutput on
Prompt Eliminando datos ...
declare
  v_formato varchar2(50) := 'yyy-mm-dd hh24:mi:ss';
begin
  dbms_output.put_line(to_char(sysdate,v_formato) || ' Eliminando datos de ilap');
  
  delete from HISTORICO_STATUS_LAPTOP;
  delete from LAPTOP_INVENTARIO;
  delete from SERVICIO_LAPTOP;
  delete from LAPTOP;
  delete from SUCURSAL_VENTA;
  delete from SUCURSAL_TALLER;
  delete from SUCURSAL;
  delete from TIPO_PROCESADOR;
  delete from TIPO_TARJETA_VIDEO;
  delete from TIPO_ALMACENAMIENTO;
  delete from TIPO_MONITOR;
  commit;
exception
  when others then
    dbms_output.put_line('Errores detectados al realizar la eliminacion');
    dbms_output.put_line('Se hara rollback');
    dbms_output.put_line(dbms_utility.format_error_backtrace);
    rollback;
    raise;
end;
/

Prompt Listo!
exit