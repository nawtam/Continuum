NAME = Continuum

all: up

build:
	podman build -t continuum .

up:
	make build
	podman run -d -p 8080:80 --name continuum localhost/continuum:latest
# port 8080 connecter au port 80 entre le containeur et le host
# localhost represente le registre ou trouver l'image

start:
	podman start continuum

stop:
	podman stop continuum

clean:
	podman rm continuum
	podman rmi continuum:latest
	podman rmi nginx:1.30.3-alpine
