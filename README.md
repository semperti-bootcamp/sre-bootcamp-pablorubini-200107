# Utilización de Dockerhub como repo de imagenes

Se genero la docker image con el siguiente comando:

`docker build -f dockerfile -t pablitorub/journals:1.0 -t pablitorub/journals:latest`

**Nota:** Se tagueó la imagen con 2 etiquetas,
  1. journals:1.0
  2. journals:latest

Luego de generada la imagen, se subió a dockerhub:
`docker push pablitorub/journals:latest`
`docker push pablitorub/journals:1.0`


**NOTAS:** se habilitó la base de datos para que acepte conexiones remotas, ya que la imagen de docker se creó sólamente con la aplicación Java, dejando la base de datos en la máquina virtual creada en el Assignment 01.

