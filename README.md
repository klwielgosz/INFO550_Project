## Land Use Project

For my project, I will analyze proposed land use classification in Atlanta as identified during community planning events. This repository contains data required to run the analysis in the `Data` folder, R code to execute the analysis in the `RCode` folder, and a `Figures` folder to contain generated images. The repository also contains a Dockerfile to create the Docker image, and a Makefile to automate the analysis.

## Pull Docker Image

The docker image can be pulled from Dockerhub using the statement `docker pull klwielgosz/final-proj`.

## Build Docker Image

The docker image can be built from the command line using `make build`. To enter the docker image and execute the analysis, you can run `docker run -it klwielgosz/final-proj /bin/bash` and follow the instructions under Execute the Analysis within the Image, then type `exit` to exit the container.

## Execute the Analysis within the Image

The project files should be run from the project folder; after running the docker image using `docker run -it klwielgosz/final-proj /bin/bash`, enter `cd ~/project` to navigate to the project folder. To execute the analysis, from the command line you can run `make report.html` to compile the final project report. This will create a file called `report.html` in the `output` folder that contains the resulting frequency table and histogram.

## Execute the Analysis Locally

 Alternatively, a local directory can be mounted to get a local copy of `report.html`. This can be done by running `docker run -it -v ~/INFO550_Project:/project klwielgosz/final-proj`, where `INFO550_Project` is the folder containing the project. This will create a directory called `output` that contains `report.html`. The `report.html` can also be generated in the main folder containing the project by running `docker run -it -v ~/INFO550_Project:/project/output klwielgosz/final-proj`, where `INFO550_Project` is the folder containing the project.

## Additional Help

For additional details and help on rules for making figures and cleaning data, run `make help` from the command line.