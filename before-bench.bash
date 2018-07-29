#!/bin/bash

sudo systemctl stop nginx
sudo systemctl stop isu-go
sudo systemctl stop mysql
sudo systemctl stop memcached

sudo sudo truncate --size 0 /var/log/nginx/access.log

sudo systemctl start memcached
sudo systemctl start mysql
sudo systemctl start isu-go
sudo systemctl start nginx
