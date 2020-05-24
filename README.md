# CAM-DockerBasic


#cp -r /var/elasticbox /home/user/

docker run --rm --name demogj -p{{http_port}}:80 -d gjctl/ctlnginx

docker exec demogj cp usr/share/nginx/html/images/{{color}}.jpg usr/share/nginx/html/images/bg.jpg

docker cp cambios.sed demogj:/usr/share/nginx/html/cambios.sed

docker exec demogj sed -i -f /usr/share/nginx/html/cambios.sed /usr/share/nginx/html/index.html

