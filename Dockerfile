FROM nginx
COPY default.conf /etc/nginx/conf.d
COPY static /usr/share/nginx/html
