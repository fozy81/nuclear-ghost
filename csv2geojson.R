library(sp)
library(rgdal)

setwd("~/nuclear-ghost")
download.file('https://raw.github.com/fozy81/nuclear-ghost/master/nuclearIncidentsUK.csv', 'nuclearIncidentsUK.csv', method='wget')
nData <- read.csv('nuclearIncidentsUK.csv')
summary(nData)
nDataSP <- SpatialPointsDataFrame(nData[,c(10, 11)], nData[,-c(10,11)])
writeOGR(nDataSP, 'ndata.geojson', 'nDataSP', driver='GeoJSON')

