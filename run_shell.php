<?php
// descripcion:
// script que realiza un login al router para extraer los datos
// de los nodos en la red mesh donde se encuentra

// ejecucion del login al router
system("expect mylogin.sh");

// ejecucion del script que copia el archivo que contiene los datos de los nodos
system("expect myscp.sh");

// ejecucion del script que elimina el archivo en el router
system("expect myrm.sh");
?>

