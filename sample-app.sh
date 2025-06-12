#!/bin/bash

#!/bin/bash

# Créer les dossiers nécessaires
mkdir -p tempdir/templates
mkdir -p tempdir/static

# Copier les fichiers de l'application
cp sample_app.py tempdir/
cp -r templates/* tempdir/templates/
cp -r static/* tempdir/static/

# Générer le Dockerfile
echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  sample_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 8080" >> tempdir/Dockerfile
echo "CMD python /home/myapp/sample_app.py" >> tempdir/Dockerfile

# Aller dans le répertoire de build
cd tempdir

# Construire l'image Docker
docker build -t sampleapp .

# Supprimer le conteneur précédent s'il existe
docker rm -f samplerunning 2>/dev/null

# Lancer un nouveau conteneur
docker run -t -d -p 8080:8080 --name samplerunning sampleapp

# Afficher tous les conteneurs
docker ps -a
