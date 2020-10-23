#! /usr/bin/env Rscript

# create figure 1
require(ggplot2)
source("MakeTable.R")
png("../fig1.png")
ggplot(t_ord, aes(Code, Freq)) + geom_bar(stat = "identity") +theme(axis.text.x = element_text(angle = 90)) + ggtitle('Frequency of Land Use Codes')
dev.off()