#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
ageDetails <- function(tavalod) tavalod * 1
shinyServer(
  function(input, output) {
    output$days <- renderPrint({ageDetails(Sys.Date()-input$tavalod)})
  }
)
