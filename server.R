library(shiny)
library(lubridate)
library(ggplot2)

server<-function(input,output){
  taiping<-read.csv("taiping.csv")

  output$plot1<-renderPlot(
    {

      filtered.data<-taiping[(year(taiping$Date)==input$year & month(taiping$Date)==input$month),]
      ggplot(data=filtered.data, aes(x=filtered.data$Hour, y=filtered.data$API))+geom_smooth(color="purple") + labs(x="Hour", y="API")
    }
  )

}


