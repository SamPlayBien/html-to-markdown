#!/bin/bash

> .env

echo "Rentrer l'URL de la page HTML à convertir en Markdown :"
read URL

echo "Rentrer le port à ouvrir pour afficher l'éditeur :"
read port

echo "URL=$URL" >> .env

echo "port=$port" >> .env

docker-compose down && docker-compose up --build &

xdg-open http://127.0.0.1:$port/
