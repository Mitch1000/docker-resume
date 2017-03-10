## Jenkins and Node/Nginx Ubuntu Docker Container Examples
               docker-compose up -d --build jenkins
               docker-compose up -d --build ubuntu
## Docker Commands
#### Build Container
               docker-compose up -d --build ubuntu
#### Run Container
               docker-compose up -d ubuntu
####  Enter Container 
               docker exec -it ubuntu /bin/bash
#### Enter Container as Root               
               docker exec -it -u 0 jenkins /bin/bash
#### Copy from Docker Container 
               docker cp icon-nginx:/usr/src/app/test/results /home/jenkins/testResults
#### List Docker Images
               docker images
#### Delete Docker Image
               docker -rmi {{IMAGE ID}} 
#### List Running Docker Containers
               docker ps
#### Stop and Remove Running Docker Container
               docker rm -f jenkins
#### Get Container Logs
               docker logs ubuntu 
#### Realtime Read Container Logs
               docker logs --follow ubuntu
#### Rebuild Container
               docker-compose build --no-cache ubuntu
#### Remove all Images
               docker rmi  -f $(docker images -aq)
#### Remove all Volumes 
               docker volume rm $(docker volume ls -q) 

