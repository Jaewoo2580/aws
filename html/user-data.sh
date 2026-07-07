#!/bin/bash
apt update -y
apt install nginx -y
curl -o /var/www/html/index.html https://github.com/Jaewoo2580/aws/blob/main/index.html
sed -i "s/listen 80/listen 8080/g" /etc/nginx/nginx.conf
sed -i "s/listen \[::\]80/listen \[::\]8080/g" /etc/nginx/nginx.conf
systemctl enable nginx
systemctl start nginx
