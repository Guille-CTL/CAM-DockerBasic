#sed cambios
#1717aaee8f80283070726f8ca9e664aea011fa9e
#docker run --rm --name borre -p80:80 gjctl
#[guille@MAKALU CAM-DockerBasic]$ docker exec borre cp usr/share/nginx/html/images/azul.jpg usr/share/nginx/html/images/bg.jpg
#[guille@MAKALU CAM-DockerBasic]$ docker cp cambios.sed borre:/usr/share/nginx/html/cambios.sed
#[guille@MAKALU CAM-DockerBasic]$ docker exec borre sed -i -f /usr/share/nginx/html/cambios.sed /usr/share/nginx/html/index.html

s/HOLA/CTL-TITULO/g
