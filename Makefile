NAME = Continuum

all: up

build:
	docker build -t continuum .

up:
	make build
	docker run -d -p 8080:80 --name continuum localhost/continuum:latest
# port 8080 connecter au port 80 entre le containeur et le host
# localhost represente le registre ou trouver l'image

start:
	docker start continuum

stop:
	docker stop continuum

clean:
	docker rm continuum
	docker rmi continuum:latest
	docker rmi nginx:1.30.3-alpine
