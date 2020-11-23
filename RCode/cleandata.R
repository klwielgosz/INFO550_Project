#! /usr/bin/env Rscript

# import data
landuse <- read.csv("./Data/LandUse_Future.csv", header = TRUE)

# rename header of first column
colnames(landuse)[1] <- c("OBJECTID")

# recode the missing LANDUSEDESC for OID 9601 (row 1825) to "Single-Family Residential"
landuse$LANDUSEDESC[1825] <-  "Single-Family Residential"

# save data
write.csv(landuse, "./Data/LandUse_Clean.csv", row.names = FALSE)
