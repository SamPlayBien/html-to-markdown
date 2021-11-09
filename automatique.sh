#!/bin/bash

> .env

echo "Rentrer l'url html que vous voulez convertir"
read URL

echo "rentrer le port sur lequel vous voulez vous connecter"
read port

echo "URL=$URL" >> .env

echo "port=$port" >> .env

docker-compose down && docker-compose up --build &

xdg-open http://127.0.0.1:$port/
