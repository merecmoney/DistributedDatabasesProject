--@Autor: Carlos A. Hernández A. & Marco A. Moreno Guerra
--@Fecha creación: 30/05/2020
--@Descripción: Creación de ligas en los 4 nodos.

clear screen
whenever sqlerror exit rollback
Prompt ============================
Prompt Creando ligas en cahabdd_s1
Prompt ============================

connect ilap_bdd/ilap_bdd@cahabdd_s1
-- PDB local
create database link cahabdd_s2.fi.unam using 'CAHABDD_S2';
--PDB remotas
create database link mamgbd_s1.fi.unam using 'MAMGBD_S1';
Create database link mamgbd_s2.fi.unam using 'MAMGBD_S2';

Prompt ============================
Prompt Creando ligas en cahabdd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@cahabdd_s2
-- PDB local
create database link cahabdd_s1.fi.unam using 'CAHABDD_S1';
--PDB remotas
create database link mamgbd_s1.fi.unam using 'MAMGBD_S1';
Create database link mamgbd_s2.fi.unam using 'MAMGBD_S2';

Prompt ============================
Prompt Creando ligas en mamgbd_s1
Prompt ============================
connect ilap_bdd/ilap_bdd@mamgbd_s1
-- PDB local
create database link mamgbd_s2.fi.unam using 'MAMGBD_S2';
--PDB remotas
create database link cahabdd_s1.fi.unam using 'CAHABDD_S1';
Create database link cahabdd_s2.fi.unam using 'CAHABDD_S2';


Prompt ============================
Prompt Creando ligas en mamgbd_s2
Prompt ============================
connect ilap_bdd/ilap_bdd@mamgbd_s2
-- PDB local
create database link mamgbd_s1.fi.unam using 'MAMGBD_S1';
--PDB remotas
create database link cahabdd_s1.fi.unam using 'CAHABDD_S1';
Create database link cahabdd_s2.fi.unam using 'CAHABDD_S2';

Prompt Listo!
exit
