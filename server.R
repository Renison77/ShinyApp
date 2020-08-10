#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyServer(function(input, output) {
   
  values <- reactiveValues()
  
  observe({
    input$CalculateVelocity
    values$velocity <- ({
      
      sqrt(input$height*2*9.8)
      
    
      
    })
  })
  
  
  
 
  output$Velocity <- renderText({
    input$CalculateVelocity
    paste("Velocity in m/s :", isolate(values$velocity))
  })
  
  
  
 
})
