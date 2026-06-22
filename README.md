*This project was created for the hackathon IFMx42 by: kjolly, ntamacha, mmamodesen, ghernandez, ibensalah, hsuasisa.*

# Continuum - Connected Ring for Hot Flashes

##⚜️ Description
Continuum is a collaborative project at the intersection of haute joaillerie and deep technology. Designed specifically for women experiencing hot flashes, this connected ring anticipates physiological spikes and provides an immediate, localized cooling sensation to restore comfort in real time.

This repository hosts the interactive landing page designed to showcase the design, the vision, and the hardware architecture of the product.

BUT maybe one day this project will become true!!!

##🚀 Instructions & Execution

###Step 1: Prerequisites

To run the static web showcase locally, you only need Docker or Podman installed. Everything else is ready to run.

###Step 2: Running the Showcase

Simply open your terminal in the project directory and run:

make


This command will automatically build the image, clean up any previous containers, and run the server.

You can now open your browser and navigate to:
👉 http://localhost:8080

###Step 3: Controlling the Container

To temporarily pause the container:

make stop

To completely delete the container and free up disk space by removing the generated container image:

make clean

##🛠️ No "Make" installed?

If your system does not have the utility make installed, you can execute the raw commands directly in your terminal:

To Build:

docker build -t continuum .

To Run:

docker run -d -p 8080:80 --name continuum localhost/continuum:latest

To Stop & Delete:

docker stop continuum && docker rm continuum
