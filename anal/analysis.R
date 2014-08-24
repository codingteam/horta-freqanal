setwd("~/Projects/R/horta-logs/")

data <- read.delim("./logs/codingteam@conference.jabber.ru/out", header=F, sep="`", 
                   quote="", as.is=T)