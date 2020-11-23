## Land Use Project

For my project, I will analyze proposed land use classification in Atlanta as identified during community planning events.

## Pull Docker Image

The docker image can be pulled from Dockerhub using the statement `docker pull final-proj`.

## Build Docker Image

The docker image can be built using `make build`. To enter the docker image and execute the analysis, you can run `docker run -it final-proj /bin/bash` and follow the instructions under Execute the Analysis. Alternatively, a local directory can be mounted to get a local copy of `report.html`. This can be done by running `docker run -it -v ~/INFO550_Project:/project final-proj`, where `INFO550_Project` is the folder containing the project. This will create a directory called `output` that contains `report.html`. The `report.html` can also be generated in the main folder containing the project by running `docker run -it -v ~/INFO550_Project:/project/output final-proj`, where `INFO550_Project` is the folder containing the project.

# Execute the Analysis

The project files should be run from the root folder. To execute the analysis, from the command line you can run `make report.html` to compile the final project report. This will create a file called `report.html` output in the output folder that contains the resulting frequency table and histogram.

## Additional Help

For additional details and help on rules for making figures and cleaning data, run `make help` from the command line.