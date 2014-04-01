shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Nuclear Incidents"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    selectInput("dataset", "Choose a site:", 
                sort(paste(unique(sort(d$Site))))), 
    ### add map here
    tags$style('.leaflet {height: 250px;}'),
    tags$style('.leaflet {layerOpts: {
       attribution: "Map data from<a href=\"http://openstreetmap.org\">OpenStreetMap</a>\n         contributors, Imagery<a href=\"http://mapbox.com\">MapBox</a>" 
       ;},'),
    showOutput('myChart2', 'leaflet') ,