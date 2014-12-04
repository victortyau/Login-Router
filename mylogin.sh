#!/usr/bin/expect -f

# ejecuta el comando ssh para ejecutar el login al router
spawn ssh root@192.168.5.1

# inicializa la variable pass
set pass "admin"

# si observa la cadena "password"
expect "password"

# envia la variable $pass
send "$pass\n"

# si observa la cadena "mrt>"
expect "mrt>"

# ejecuta el comando telnet y redirecciona el resultado a un archivo llamado info_nodo.txt
send "telnet 127.0.0.1 2006 > info_nodo.txt"

# ejecuta un salto de linea y retorno
send "\n\r"

# ejecuta un salto de linea y retorno
send "\n\r"

# si observa la cadena "mrt>"
expect "mrt>"

# ejecuta un salto de linea y retorno
send "\n\r"

# si observa la cadena "mrt>"
expect "mrt>"

# ejecuta el logout del router
send "exit\n\r" 

# ejecucion de los comandos
interact
