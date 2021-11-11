# Convertisseur HTML to Markdown

Le but de cette application est de convertir une page HTML en markdown à partir d'une URL donnée.
Ensuite on utilise l'éditeur de markdown pendulum afin d'avoir un aperçu direct de la page qui sera générée.


## Installation

Mettre les fichiers du dépôt dans la directory souhaitée. Vous devez lancer le automtique.sh dans cette directory
Par défaut, accédez à l'édition de votre fichier .md dans le dossier markdown.
Pour modifier le chemin ou le nom du dossier, Ouvrez le fichier docker-compose.yml :

Modifiez le chemin dans la section local dans la section "volumes" (ici markdown) :
```
volumes:
   - ./markdown:/var/tmp
```
```
volumes:
   - ./markdown:/app/contents
```

## Usage

Lancer le script **automatique.sh** dans votre terminal (et dans le directory ou vous avez décompréssé l'archive)

```shell
./automatique.sh
```
Dans votre terminal rentrez l'URL html que vous souhaiter convertir.

Puis rentrer le port sur lequel vous voulez que la page s'affiche.

**Au premier lancement, les images se télécharge (il est donc normal que le navigateur se lance sur une page d'erreur de connexion), vous pouvez voir l'avancé du téléchargement dans votre terminal**

Une fois sur l'interface pendulum, vous pourrez accéder à vos fichier markdown par le dossier /contents/.
Vous aurez ainsi un aperçu du rendu html de votre page markdown.

Vous pouvez la modifier, sauvegarder, créer de nouveaux fichier markdown, et même charger d'autre fichier déjà présent dans votre directory de travail.

## Contribution

L'application a été mise en place grâce aux outils pandoc/latex (convertion) et titpetric/pendulum (editeur)

## Sources
https://github.com/titpetric/pendulum
https://hub.docker.com/r/pandoc/latex
