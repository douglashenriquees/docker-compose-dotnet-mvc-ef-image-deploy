## Docker Compose

* ```dotnet publish -c Release -o dist```
* ```docker-compose -p application build```
  * o parâmetro ```-p``` define o prefixo para criação dos volumes, redes e containers. Caso não informado, será utilizado o nome do diretório como prefixo
* ```docker-compose -p application up -d```
* ```docker container ps -a```
* ```docker container exec -it docker-compose-dotnet-mvc-ef-image_mysql_1 /bin/bash```
* ```mysql -u root -p```
* ```show databases;```
* ```docker-compose -p application down --rmi all -v```
  * ```--rmi all``` remove também as imagens que foram baixadas para o **host**

## Publicando a Imagem

* ```dotnet publish -c Release -o dist```
* ```docker image build -t asp-net-mvc/app:4.0 .```
* ```docker image tag asp-net-mvc/app:4.0 username/mvc-produtos:4.0```
* ```docker login -u username```
* ```docker image push username/mvc-produtos:4.0```