#! /bin/bash

# update system
sudo apt-get update -y

# upgrade system
sudo apt-get upgrade -y

# install web-server called Nginx
sudo apt-get install nginx -y

#sudo rm -rf /etc/nginx/sites-available/default
#sudo cp app/default /etc/nginx/sites-available/default
cd /etc/nginx/sites-available
sudo rm -rf default
sudo echo "
server {
    listen 80;
    server_name _;
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
" >> default
# start nginx

sudo systemctl start nginx

# Enable nginx
sudo systemctl enable nginx

# Install python
sudo apt -get install python -y
sudo apt-get install python-software-properties

# install node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm i -g pm2
sudo systemctl start pm2

# go into the app folder 
cd app
cd app
cd app
sudo npm install
sudo npm start
