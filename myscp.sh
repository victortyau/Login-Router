#!/usr/bin/expect -f


# ejecucion del comando de copiar el archivo de forma segura
spawn scp root@192.168.5.1:info_nodo.txt /var/www/web_node_spy_codigo/network/

# inicializar la variable pass
set pass "admin"

# al ver la cadena "password"
expect "password"

# envia el valor de la variable $pass
send "$pass\n"

# si observa la cadena "Please type 'yes' or 'no':"
expect "Please type 'yes' or 'no':"

# envia la cadena "yes\r"
send "yes\r"

# si observa la cadena "Please type 'yes' or 'no':"
expect "Please type 'yes' or 'no':"

# envia la cadena "yes\r"
send "yes\r" 

# ejecuta los comandos
interact
