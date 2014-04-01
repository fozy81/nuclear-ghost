

shinyServer(function(input, output) {

  mapText <- reactive({
    eval(parse(text=paste("sites[sites$Full.name == \"", input$dataset, "\", 6:7]",sep="")))
  })
  

output$myChart2 <- renderMap({
  map3 <- Leaflet$new()
  map3$geoJson(toGeoJSON(dat_list, lat = 'lat', lon = 'lon'),
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
  data1 <- mapText()
  map3$setView(c(data1[,2], data1[,1]), zoom = 15)
  map3$tileLayer("http://{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png")
  map3$set(height = '250px', width = '250px')
  map3
})
