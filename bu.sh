#!/bin/bash
sudo mkdir centinela.txt
sudo touch -t 202509010000 /tmp/fecha_limite
sudo find /home/ -maxdepth 1 -type d -not -newer /tmp/fecha_limite >> /tmp/usuarios_a_borrar
ARCHIVO="/tmp/usuarios_a_borrar"

while IFS= read -r LINEA;
do
sudo rm -R $LINEA ########## cambiar echo por rm cuando se verifiquen las fechas ##########
done < "$ARCHIVO"

sudo rm  /tmp/fecha_limite
sudo rm /tmp/usuarios_a_borrar
