
Prompt seleccionar la PDB para validar
connect ilap_bdd/ilap_bdd@&pdb
Prompt  Indicar la Tecnica para fragmentar servicio_laptop:
accept p_fragmento char prompt  '(L) empleando Laptop,  (S) empleando sucursal: '

whenever sqlerror exit rollback;
set serveroutput on

Prompt Creando procedimientos para validar 

create or replace procedure p_valida_inserciones wrapped 
a000000
1
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
3e2 291
y94lguJLlRn6zvUnFCDar9Tenvowg41er0iMfI5o9sWBLBmyTbTjXXUYjed1PKPdhWeJE40b
SB8+f/PIAIGGsZ9ZDPEcRVpa0DgZX5p6hT69zMPMNoAzvwNkv/0rbUrEBUXzNAPHYLO20fLy
nkAYdrPKZkSRXEWidwL4mKH/4Kt6YxbVvdk+GAirK/uyTx17v6gX8TqhBKuk3QJ+TH9u6RF5
ZxKLI/+MQIQJAWM3gOe6RL1KhXUomSw0gkMVKfJO+Ug+sIXDf/S9Aq+IF3wT3CDcWC/xDIvw
TSGCkJfArDwW2PI2Vy7MRh2TPvXgMs9yxAB+E7d9zVtbJ7N4S1f5OKuzbrFhralj2f7+BefX
mQvoQUubeK0Rx3ZqpXQiz+3om4gBo/zFZ63GWW2F86WTywHzj1SN5Qn7fbSJ11wDdOSEdTlT
Z1aFTjYHNfSh1C9jRoMkwUF4/mjHdkRb0WHwfQU53OHbKd0BbKuPVffEE0wd2stiqgra+n0U
H84chwXXBTcKj7z3JZWndCcuNz8nq7BIf/H4Zi1rsaSB35YAH4HpZKGiqjsWPsisjAGjfAmN
QlzcQ9fTbqgFmxC1H8iauYAKejSSeH7v7qNS/PrZwHClHCy65P7S/0vm7VmTevnOW0KFRKM=


/
show errors

create or replace procedure p_valida_insercion_blob wrapped 
a000000
1
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
177 179
RmUlJwidMJIrDcXB2r8Vk4etanMwg/DQrm3WfC+V/uWPv3UTb35S2RkYmfToBUvf9wTtQLRA
6bgLzDFeJOTUY6riEgQEyT+71xMJpV9dDcq4zCRFu/+jMp9lhib92Cf4a/DhmvbD1PYbN2Vw
gfO284SMFBVEo2Cy0zH79HmPZKkrN9D6WwHc6f64H+jIpoUdk9RBZ6Bmno0BNYIUPhcY56/p
oBkboZtvB437C67WkIAAy28V6YZMZGtOL4sKE4tSdXYIVGhRaC0EGxd8TEdNurJFByALkI+U
FT3/fxpNhayLzlQ+h9nCp/3q5Q5fojjs6LvdJIaw/pod0Oe1vabR2l0jny/RVxloucJ2fRky
4jHt5OHHnTg0

/
show errors

create or replace procedure p_valida_conteos wrapped 
a000000
1
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
1f4 1b1
zO+zMCZQ9WY4hJsKvaqX/iycYqYwg3nM2UgVfC+KjfLkahnTGo7MI9VE+qGn4Cq094bSJ4hL
aRqOjBTN9NBktoeUlfE7gbmKMNQTnhw4bplG7ZKzAS2zJ3m/8C0NmqqKY8UGWWbqFPGtoalD
2S/pppx6yT6e004klKEVRt1J87Os4wimETyqdAiQZcaAwbgMOt+YahsftBUSrFB0lKHrRmCi
Cf+Onq8CtSEc8IdB1m8lTrT+nCZWfnTDybp3LgH2Fp/2ulzJVVS0HvKEJmuz1b9IDJglbDBM
Hu64PBJFI4TdIyDF7S2BHkTSrpqU1+rwMZT+s4DW1vTZC/E4ukpqAegw0etxy1UrvQF9Eusp
9Tnk71NpWuKDck4gTeEgvHa+Q7L/4cr8yURVXdwrZHt7F8b+k3T1uWYfWRw/+1jdQDY=

/
show errors


create or replace procedure p_valida_insercion_main wrapped 
a000000
1
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
1304 672
tHisVu2WrP8gupd1umNmp4oIn4Mwg0PqVUgGYI65Yveby7DqQJeZYTqhEYla1FnTCtSGkgca
6qcfNJgr9PB+toHgLOjE7Rl4tDS0QYgdqL2fWaAFhyFm53VOTpCCmm46fjHD7wtyG0vSu9bp
ISjkFv8V9W9sLaofolLrm5Z5gSfmWZwVww0N9j0row7axoDGgPAmZMxy9a/SG+/geAGhiaMX
zvgIs+NxKRvErSdU+cMq0i38HuiEfi6wG1LswiUsGOZh7DslVlTOLDYtxkzZipQ69U9C9DIg
V3rdo6eJGRxOnluTrTFSUyiGejDtNpN7Yr/F1RLKpIrrnJJjIlylXeLChpxbbel1PE3yp8U0
l5f8yyi//NmU3FzNZ6ltcFhJDMlVZMkVjwJiZ/QIKaEQupO5PVt/irxLO+qHjk5V3IxGrcU9
FCb1CgYijAiwFtm3IexsP6dbOsVOLAgr6ACkxWTaTtKSbFNhIt4jpwKMARd0DaO40QThU7Hb
RrKM/heGXspZu+9uF9qhYUYZuzIllv7hFjK3Y3iSkIVDP+O3BNwylm4ylqmUPQTQG0quALGb
aN/5+EBI8eh8Q2oAQUlLrWelueFBAZSjF/Dl1IVfggf+A7A0LU8gTl60iNHp9FUUdNg7/MsI
XNll9S4ys+tJYS7Ni9rp8UXChbr6RacaqcbWMpY3Acg5S+fKqs4Xb4ADpouoz1rW0L+K0kdR
B5Z/+EOT/GHdCyoiqm+pxpmCVEApTIlJThTWVvSvFmb9aIc2sM5FMRZr3XlKNZ16CxI0qgdy
9vmU7jPGqYDsGu6AemM+Zm6oFULISXxlfU2X+Hw2gLIHBKLHNwzji5YWxVPUVAyeoFOgKTZ0
PcAmlbwZcbZ3Pnoq4d4P87HKi40SVTQaMC+P5uDMD2UVF0sTHksT98Zt4JlYS5CfDY9wUCZK
OHN7U8PXgX4N36AX20L0CMZ55LwQcrY04GqKmM3OHi7Re4reQc1N1Len3nf1vTJh7fzyJUr8
Fso8KM2Y5TgvmGXWmxRqo3l2bhEYhKMAFCid4x7oPldUiD/B7CRWxcKJ1sQyo3ivSkpNVU2w
xiZlXmS1mzMmE8Gjv3EnHquBpOoyALDcvOAX8qCX0CTxDgNbLeQxayE+jpzMOZrHjmQssauy
IhNoUdb9b4TH2RcQVqzJTV5m4VI8xuOqXXHz8xmRkYZmnZt0NOpMKAB0J4eUT3oFEQjpir6A
dnBlw281UzpqawBjlihFrOcQ+dNQ22nGjv45TSMKJ/yxnVLMfaHN7kuwdDafgISEV/cF1jch
w7SDsHoP+YMpR2qVUQAMuXvu5ccfkZNQWElSVx5H1gHSP40yiwoW9lsxm2TX0d9+JwTvXPjN
ilzeypTeWHvK3uwaJMSvvTckIYaUvhgsu83wSOfOyp0PD3M4YUFsuEpcnhNwWaSP0yQkfgHW
dIU7YFY5rLoZfJCAzM0xy7HPAvjRI+QYJ7M6VVB9dXAUOaOnn1/+gsm6jvEG4X1PZpcENkbm
bDAsZ4XFRIcJ/67ORXDkS8QGrCsEuDthVBEZPddyAnU+kS7Mfapy3QUFYh0B+ZKxBOM1QUju
E4jOpWM5RBdtjyKiJ3qomtxzAhnkJKVK7bXSsvFQ7/o=

/
show errors

Prompt ======================================
Prompt Iniciando validacion - Insert
Prompt ======================================
exec p_valida_insercion_main('&&p_fragmento');

Prompt Listo!
exit
