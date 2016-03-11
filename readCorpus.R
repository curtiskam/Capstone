library(tm) #load text mining library

setwd("D:/Document/github/Capstone/final/en_US") #sets R's working directory to near where my files are

Source <- DirSource("D:/Document/github/Capstone/final/en_US/")

myCorpus <- Corpus(Source, readerControl=list(reader=readPlain)) #load in documents