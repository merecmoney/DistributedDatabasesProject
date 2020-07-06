# Creation of Distributed Relational Database

## Centralized Relational Model

![Centralized Relational Model](/Screenshots/global_scheme.jpg)

## Distributed Relational Model

### Site CAHABDD_S1

![Relational model for site CAHABDD_S1](/Screenshots/cahabdd_s1-local-scheme.jpg)

### Site CAHABDD_S2

![Relational model for site CAHABDD_S1](/Screenshots/cahabdd_s1-local-scheme.jpg)

### Site MAMGBD_S1

![Relational model for site CAHABDD_S1](/Screenshots/mamgbd_s1-local-schema.jpg)

### Site MAMGBD_S2

![Relational model for site CAHABDD_S1](/Screenshots/mamgbd_s2-local-schema.jpg)

### Features

#### Implemented Local Mapping Transparency

This requirement was achieved using database links. These are defined
in this script [link](s-02-ilap-ligas.sql)

#### Implemented Location Transparency

This requirement was achieved using SYNONYMS for tables' names.

Scripts for each site:

- [For CAHABDD_S1](/s-04-ilap-cah-s1-sinonimos.sql)
- [For CAHABDD_S2](/s-04-ilap-cah-s2-sinonimos.sql)
- [For MAMGBD_S1](/s-04-ilap-mmg-s1-sinonimos.sql)
- [For MAMGBD_S2](/s-04-ilap-mmg-s2-sinonimos.sql)

#### Implemented Fragmentation Transparency

##### Fragmentation Transparency for SELECT

This requirement was achieved using RECONSTRUCTION EXPRESSIONS
for each entity:

![Reconstruction Expressions](/Screenshots/Reconstruction_Expressions.png)

These are views that use the reconstruction expressions.

For example, Sucursal view is:

'''sql
create or replace view SUCURSAL as
select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url
from SUCURSAL_f1
union all
select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url
from SUCURSAL_f2
union all
select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url
from SUCURSAL_f3
union all
select sucursal_id,clave,es_taller,es_venta,nombre,latitud,longitud,url
from SUCURSAL_f4;
'''

As can be seen, reconstruction expression is used to show
all rows from all entitie's fragments distributed across all nodes.

All views for all nodes are in [05-views-creation directory](/05-views-creation)

##### Fragmentation Transparency for INSERT and DELETE

This requirement was implemented using INSTEAD OF TRIGGERS for the views
created for SELECT Fragmentation Transparency.

When INSERT or DELETE is made on a view, triggers operation
on the corresponding entitie's fragment.

All scripts to create triggers can be found in [06-triggers directory](/06-triggers)

#### Replication using Triggers

Instantaneous replication using Triggers to have the following
tables replicated across all nodes:

- TIPO_PROCESADOR
- TIPO_TARJETA_VIDEO
- TIPO_ALMACENAMIENTO
- TIPO_MONITOR

These entities are replicated on all nodes, this is accomplished
using INSTEAD OF TRIGGERS, when a DML operation is made on
the view, triggers that operation to all nodes.

All scripts to create triggers can be found in [06-triggers directory](/06-triggers)
