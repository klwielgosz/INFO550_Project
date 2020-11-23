#! /usr/bin/env Rscript

# import data
landuse <- read.csv("../Data/LandUse_Clean.csv", header = TRUE)

# order data by most common type of land use
codes <- c(levels(factor(landuse$LANDUSECODE)))

t <- data.frame(codes, table(landuse$LANDUSEDESC))

colnames(t) <- c("Code", "Land Use", "Freq")

t_ord <- t[order(-t$Freq),]