## report.html: rule for making report  
report.html: Data/LandUse_Clean.csv Figures/fig1.png Rcode/ProjectReport.Rmd
	cd Rcode &&\
	Rscript -e "rmarkdown::render('ProjectReport.Rmd', output_file = '../report.html')"
	
## LandUse_Clean.csv: rule for cleaning data and outputting it in a csv file
Data/LandUse_Clean.csv: Rcode/cleandata.R Data/LandUse_Future.csv
	chmod +x Rcode/cleandata.R && \
	Rscript Rcode/cleandata.R
	
## fig1.png: rule for making figure 1
Figures/fig1.png: Rcode/fig1.R Data/LandUse_Clean.csv
	cd Rcode &&\
	chmod +x fig1.R &&\
	Rscript fig1.R

# rule for installing packages
.PHONY: install
install: Rcode/install.R
	chmod +x Rcode/install.R &&\
	Rscript Rcode/install.R

.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
