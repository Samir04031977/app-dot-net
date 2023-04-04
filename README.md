Deployer une API dot net
Etape 1 : Créer un DockerFile (Voir Fichier)
Etape 2: Builder l'image
        docker build -t app-dot-net .
        docker run --name app-dot-net -p 80:80 -d app-dot-net
Etape 3 : Transferer l'image dans dockerHub
        docker tag app-dot-net samir1977/app-dot-net
        docker push samir1977/app-dot-net
Etape 4 : Deployer l'API
    Creer deux fichier : Deployment et service
     en ligne de cde :
     kubectl apply -f .\ressources-files\service.yml,.\ressources-files\deployment.yml
    



