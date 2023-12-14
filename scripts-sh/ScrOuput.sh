#! /bin/bash
: '
ls -la 1>file.txt 2>file2.txt
ip a 1>file1.txt 2>file3.txt
'
# En el primer archivo se obtiene el resultado del comando en caso de ejecutarse correctamente y en el segundo archivo se obtiene el error del comando.

ls -la >file.txt 2>&1

# En este caso se obtiene el stdout en el archivo original y stdout igualmente en el mismo archivo. 
# Other syntax ls -la >& file.txt
