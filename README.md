# Convertisseur HTML to Markdown

Le but de cette application est de convertir une page HTML en markdown à partir d'une URL donnée.
Ensuite on utilise l'éditeur de markdown pendulum afin d'avoir un aperçu direct de la page qui sera générée.


## Installation

Mettre les fichiers du dépôt dans la directory souhaitée. Vous devrez effectuer les commande de lancement de docker-compose dans cette directory.

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

Vous pouvez également modifier le port http qui sera ouvert sur votre machine host de l'application Pendulum (par défaut 8080) :
```
    ports:
      - 8080:8080
```

ATTENTION ! Il faut bien modifier le port côté host (host:docker) et non côté docker.


## Usage

Pour choisir l'URL que vous allez convertir en Markdown, ouvrez le fichier .env et modifiez la valeure de l'URL.
Lancez un terminal et placez vous dans la Directory où se situe vos fichiers.

```bash
docker-compose up
```

Accédez à votre navigateur et saisissez http://localhost:8080 (port par défaut).
Une fois sur l'interface pendulum, vous pourrez accéder à vos fichier markdown par le dossier /contents/.
Vous aurez ainsi un aperçu du rendu html de votre page markdown.

Vous pouvez la modifier, sauvegarder, créer de nouveaux fichier markdown, et même charger d'autre fichier déjà présent dans votre directory de travail.


## Contribution

L'application a été mise en place grâce aux outils pandoc/latex (convertion) et titpetric/pendulum (editeur)

## Sources
https://github.com/titpetric/pendulum
https://hub.docker.com/r/pandoc/latex
