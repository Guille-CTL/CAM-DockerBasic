#!/bin/bash

GJ_IP=$( curl -s ifconfig.me )
GJ_LOCALIZACION=$( curl -s ifconfig.co/json )
GJ_TITULO="CAMBIAR A ACA EL TITULO"

echo $GJ_IP
echo $GJ_LOCALIZACION
echo $GJ_TITULO

cat > cambios.sed << EOM
#sed file
s/GJ_CTL-TITULO/$GJ_TITULO/g
s/GJ_IP/$GJ_IP/g

