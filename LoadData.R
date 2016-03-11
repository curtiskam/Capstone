##install libraries

##install.packages('tm')
library(tm)

## set working directory

setwd("D:/Document/github/Capstone")

## read in data from web

webpage <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"


data <- "Project Data"
download.file(webpage,data, mode="wb")

## uncompress data

unzip (data, exdir ="D:/Document/github/Capstone")

##read files into Corpus


