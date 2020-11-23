FROM rocker/tidyverse

# install R packages
RUN Rscript -e "install.packages('ggplot2')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project
RUN mkdir /project/output/
RUN mkdir /project/Figures/

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/RCode/*.R

# make container entry point bash
CMD make -C project report.html