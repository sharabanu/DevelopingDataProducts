library(shiny)
#library(lubridate)
#library(ggplot2)

ui<-fluidPage(

  headerPanel("Air Pollutant Index (API) 2013-2015: Kampung Air Putih, Taiping"),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId ="year", label="Select Year", choices=c(2013,2014,2015), selected=2014),
      selectInput(inputId="month", label="Select Month", choices=c(1,2,3,4,5,6,7,8,9,10,11,12), selected=1),
      p("This apps will analyze the Air Pollution Index (API) readings of Kampung Air Putih from 2013-2015."),
      p("You just need to select year by clicking on the 'Select Year' and 'Select Month' drop down buttons as above.")
    ),
    mainPanel(
      h3("Air Pollution Index (API) for Kampung Air Putih, Taiping"),
      p("Taiping is a historical town lacated in the state of Perak, meanwhihe Kampung Air Putih is one of the smallest villages in town."),
      p("Below are the analysis of API readings for Kampung Air Putih from 2013-2015 according to year and month selected."),
      plotOutput("plot1")
    )
  )

)


