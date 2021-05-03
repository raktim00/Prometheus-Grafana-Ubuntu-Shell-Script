#!/usr/bin/bash

sudo apt-get -y install nginx
cat <<EOF | sudo tee /etc/nginx/sites-available/default
server {
        listen 80 default_server;
        listen [::]:80 default_server;
	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;
        server_name _;
        location / {
                proxy_pass http://localhost:3000;
        }
}
EOF
sudo systemctl restart nginx
systemctl status nginx
