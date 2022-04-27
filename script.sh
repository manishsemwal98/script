#!/bin/bash

if systemctl status docker.socket | grep "Active:" | grep -q "listening"
then
    echo -e "\e[32mSUCCESS:\e[0m Docker is running."
else
    echo -e "Docker service is found in stopped state. \nStarting docker service......."
    sudo systemctl start docker.socket
fi
