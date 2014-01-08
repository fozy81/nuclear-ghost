library(sp)
library(rgdal)

setwd("~/nuclear-ghost")
download.file('https://raw.github.com/fozy81/nuclear-ghost/master/nuclearIncidentsUK.csv', 'nuclearIncidentsUK.csv', method='wget')
nData <- read.csv('nuclearIncidentsUK.csv')
summary(nData)
nDataSP <- SpatialPointsDataFrame(nData[,c(13, 14)], nData[,-c(13,14)])
writeOGR(nDataSP, 'nuclearIncidentsUK.geojson', 'nDataSP', driver='GeoJSON')

