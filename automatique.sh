#!/bin/bash

#Vide du .env
> .env

#Demande de l'URL
echo "Rentrer l'URL de la page HTML à convertir en Markdown :"
read URL

#Demande du port
echo "Rentrer le port à ouvrir pour afficher l'éditeur :"
read port

#URL dans le .env
echo "URL=$URL" >> .env

#Port dans le .env
echo "port=$port" >> .env

#On clear le docker compose et on le up/build
docker-compose down && docker-compose up --build &

#Ouverture de la page de l'editeur
xdg-open http://127.0.0.1:$port/
