#!/bin/bash

echo ">>>>>>Stoping mysql service"
sudo service mysql stop
echo ">>>>>>Stoped"

echo ">>>>>>Permission to docker"
sudo chown $USER /var/run/docker.sock
echo ">>>>>>Done"

echo ">>>>>>Stoping tomcat service"
sudo systemctl stop tomcat
echo ">>>>>>Stoped"
