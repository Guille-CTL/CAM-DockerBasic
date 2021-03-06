#!/bin/bash
GJ_IP=$( curl -s ifconfig.me )
GJ_LOCALIZACION=$( curl -s ifconfig.co/json )
GJ_TITULO="{{titulo}}"
GJ_COLOR={{color}}
GJ_HTTP_PORT={{http_port}}


if [[ $GJ_LOCALIZACION == *"rror"* ]]; then
  GJ_LOCALIZACION=$( curl -s ifconfig.co/json )
fi

if [[ $GJ_LOCALIZACION == *"rror"* ]]; then
  GJ_LOCALIZACION=$( curl -s ifconfig.co/json )
fi


GJ_LOCALIZACION_SED="$(<<< "$GJ_LOCALIZACION" sed -e 's`[][\\/.*^$]`\\&`g')"

echo $GJ_IP
echo $GJ_LOCALIZACION
echo $GJ_TITULO
echo $GJ_COLOR
echo $GJ_HTTP_PORT

cat > cambios.sed << EOM
#sed file
s/GJ_CTL-TITULO/$GJ_TITULO/g
s/GJ_IP/$GJ_IP/g
s/GJ_COLOR/$GJ_COLOR/g
s/GJ_HTTP_PORT/$GJ_HTTP_PORT/g
s/GJ_LOCALIZACION/$GJ_LOCALIZACION_SED/g
