
Prompt ======================================
Prompt validando transparencia de eliminacion
Prompt ======================================

Prompt seleciconar la PDB para validar
connect ilap_bdd/ilap_bdd@&pdb

whenever sqlerror exit rollback;

set serveroutput on

create or replace procedure p_valida_eliminacion wrapped 
a000000
369
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
7
12e 150
VCy3PwxNBZnHyIxeEYFy7mWT1U4wg0xK1ydqfC9GEg2vu0t4BY858yOZy4Vh8eN78bPQZOYa
6OcJrRZrsHrPQyVnfTg4yXU6tDWlp/WjL1N1IBKfLDxZF/5DNAC+MR+T7F/oQ+w+DnR1It+i
w3yrAhMclrPj6RLd4JBjbGlYY7IxXm/q9ep6QLo2bE0dkwaicMX0r2pQ62/Vl1io5rjMNOLz
5iBc0Ul15N4zxHBqiqgP3/pz+XBzMXYV0inixHwPC3MmgfjqvvRB0vFWUrF2Y+6jsqM7BlhB
ZQldMkwgN53qqUFaH/1WXbV82B1FbcUY19koAWxpbw==

/
show errors


create or replace procedure p_valida_eliminacion_main wrapped 
a000000
369
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
7
13b7 33b
VNfA4Ih08SLFpf1cPKk/1wRGg8Qwg+2xTCCDfI45j1Wsd7XImCXlH5WfZCNDOb9OibTMIlMN
VoUhrqg1oY/+ckOM5pDoOnagwJlCLBVCx9PCccbgzENmg+zteWiD7EVS/bGDjR6jAy3i8JFS
gpBWLtjVXGDl8g+iIhMkInoZAJpZD9vqJuQFtykaL/Tj2X2lLTFzTBRcJoxOOGS+3IxRGAo0
j/RCkPiESViTm6LRU/P0WWMGLXcnn3uP7p+0O59zcP1OCz/4GzebvRRP3U4+FE8cTjWm1qZ0
I+Hu7geRpc8MQRRmB/BCoC5e/nXeTyqsUOejjOeys0aCxi9oSdLh0utiAsWt2JT4RaRi6I5J
bd1irA0WaOaOBkZ/VzO1Hi9x9EYXY/+s5VC0zbR5+5RXF7elfuHX6O4xjuzXFQOIIfg+evg+
U+zGpVBdbeWi+ZR3gPeWY3JlqYN0Mp2/+YjUqfhOB2AvqzX2jmvMoNQvq4QncPx9dqfyNhG+
wwekWBIES3BxElS37bGvmIsJFBb3NA9vNfhOE1bykNlUE1FdAVxn4l9PSASYGTt7gl+faLKl
1V2We+wikJgPOczSIO2JWN8mKyWqW7dbbqV9YZAx9TtOYSnQF70H545mWuPmqBhGBI7g4zUB
IKp8mbypRycFvwojS/bbU9GtrI/nQYznSgatQI98HdL2zZilrm4Mvi97z0A/ZHPlc17BGTse
y3rUKBava13FiQZpI5SXuBbJS3qhQlaOrmOdv/sb9hPwTD07VVeq/qzQM+8MyFa+SmNap4fG
ZRTZGU8oRqN6qjqyFehAHA==

/
show errors


Prompt ======================================
Prompt Iniciando validacion - Delete
Prompt ======================================

exec p_valida_eliminacion_main


prompt Listo!
--exit



