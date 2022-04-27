#!/bin/bash

if systemctl status docker.socket | grep "Active:" | grep -q "listening"
then
    echo -e " Docker is running."
else
    echo -e "Docker service is found in stopped state. \nStarting docker service......."
    sudo systemctl start docker.socket
fi
