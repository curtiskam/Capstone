##install libraries

## install.packages('tm')
library(readr)
library(tm)

## set working directory

setwd("D:/Document/github/Capstone")

##Inspect unzipped file
list.files("final")

#inspect English subdirectory
list.files("final/en_US")


# import files
blogs <- read_lines("final/en_US/en_US.blogs.txt")
twitter <- readLines("final/en_US/en_US.twitter.txt", encoding = "UTF-8", skipNul = TRUE)
news <- read_lines("final/en_US/en_US.news.txt")

#find max characters
blogsmax<- max(nchar(blogs))
twittermax <- max(nchar(twitter))
newsmax <-max(nchar(news))
max(blogsmax, twittermax, newsmax)

##Find Love divded by Hate
love <- sum(grepl("love", twitter))
hate <- sum(grepl("hate", twitter))
love / hate

##find the biostat tweet
findbiostats <- grep("biostats", twitter)
twitter[findbiostats]

##Find count of kickboxing line in twitter
sum(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))



