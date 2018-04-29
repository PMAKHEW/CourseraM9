#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Determine your age in days:"),
    sidebarPanel(
      dateInput('tavalod', 'Your birthday:', value = NULL, min = NULL, max = NULL,
                format = "yyyy-mm-dd", startview = "month", weekstart = 0,
                language = "en", width = NULL),
      submitButton('Calculate')
    ),
    mainPanel(
      h3('Your age in:'),
      h4('Age in days'),
      verbatimTextOutput("days")
    )
  )
)
