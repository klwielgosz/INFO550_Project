## report.html: rule for making report  
report.html: Data/LandUse_Clean.csv Figures/fig1.png RCode/report.Rmd
	cd RCode &&\
	Rscript -e "rmarkdown::render('report.Rmd', output_dir = '../output')"
	
## fig1.png: rule for making figure 1
Figures/fig1.png: RCode/fig1.R Data/LandUse_Clean.csv RCode/MakeTable.R
	cd RCode &&\
	Rscript fig1.R
	
## LandUse_Clean.csv: rule for cleaning data and outputting it in a csv file
Data/LandUse_Clean.csv: RCode/cleandata.R Data/LandUse_Future.csv
	Rscript RCode/cleandata.R

.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
