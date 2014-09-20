library(shiny)
library(RCurl)
require(rCharts)
library(reshape)

d <- read.csv("nuclearIncidentsUK.csv")
djson <- toJSONArray2(d, json = F)

shinyServer(function(input, output) {

  mapLatLon <- reactive({
    eval(parse(text=paste("d[d$Site == \"", input$dataset, "\", 10:11]",sep="")))
  })
  

output$myMap <- renderMap({
  map <- Leaflet$new()
  map$geoJson(toGeoJSON(djson, lat = 'realLat', lon = 'realLon'),
               onEachFeature = '#! function(feature, layer){
               layer.bindPopup(feature.properties.Site)
} !#',
               pointToLayer =  "#! function(feature, latlng){
               return L.circleMarker(latlng, {
               radius: 4,
               fillColor: feature.properties.Color || 'red',    
               color: '#000',
               weight: 1,
               fillOpacity: 0.8,
               })
               } !#"
               
  )
  
  latLon <- mapLatLon()
  map$setView(c(latLon[,2], latLon[,1]), zoom = 15)
  map$tileLayer("http://{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png")
  map$set(height = '150px', width = '150px')
  map
})


output$chart <- renderChart({
  d <- d[d$LevelFormatted > "0",1:14] # removes '0' level incidents
  d$Year <- as.factor(d$Year)
  d$Year <- as.Date(d$Year, format="%Y")
  d$Year <- format(d$Year, "%Y")
n1 <- nPlot(LevelFormatted ~ Year, group = 'Location', data = d, type = "multiBarChart")
n1$addParams(dom = 'chart')
return(n1)
})



})
