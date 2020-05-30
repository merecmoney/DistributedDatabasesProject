--@Autors: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 30/05/2020
--@Descripción: Creación de usuarios en los 4 nodos

clear screen
whenever sqlerror exit rollback;
set serveroutput on
Prompt Inciando creacion/eliminacion de usuarios.
accept syspass char prompt 'Proporcione el password de sys: ' hide
prompt =====================================
prompt Creando usuario en cahabdd_s1
prompt =====================================

connect sys/&&syspass@cahabdd_s1 as sysdba
@s-01-ilap-usuario.sql
prompt =====================================
prompt Creando usuario en cahabdd_s2
prompt =====================================

connect sys/&&syspass@cahabdd_s2 as sysdba
@s-01-ilap-usuario.sql
prompt =====================================
prompt Creando usuario en mamgbd_s1
prompt =====================================

connect sys/&&syspass@mamgbd_s1 as sysdba
@s-01-ilap-usuario.sql
prompt =====================================
prompt Creando usuario en mamgbd_s1
prompt =====================================

connect sys/&&syspass@mamgbd_s2 as sysdba
@s-01-ilap-usuario.sql

Prompt Listo!
exit
