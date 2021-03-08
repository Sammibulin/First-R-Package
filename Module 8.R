## Loading the packages and requirements for the script ##

install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)

install.packages("pylr")
library(data.table)
library(plyr)
library(tidyr)


dataset<- read.table("Assignment 6 Dataset.txt", header=TRUE, sep =",")

## Calculating the average of the grades and adding it to a new column ##

StudentAverage = ddply(dataset,"Sex",transform, Grade.Average=mean(Grade))

## Making sure it did what we wanted and saving the dataframe to a text file ##

View(StudentAverage)

write.table(StudentAverage, "Student Average.txt")

## Checking the structure of the data we are working with ##

str(StudentAverage)

## Filtering out students with an I in their name into a new dataframe ##

I_Students <- subset(StudentAverage, grepl("i", StudentAverage$Name, ignore.case = TRUE))

## Confirming it did what I wanted ##

View(I_Students)

## Writing and Output File ##

write.table(I_Students, "Filtered Students.txt", sep = ",")



