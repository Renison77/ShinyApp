
library(shiny)


shinyUI(fluidPage(
  
  titlePanel("Calculate free fall velocity under gravitational acceleration in vaccum"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("This app helps in calculating the free-fall velocity  of object just before it hits the ground from a height h"),            
      br(),           
      numericInput("height",label = h4("Object falls from what height?(in metres)"),min = 0.5, max = 5000, value=1), 
      br(),
     
      br(),   
      actionButton("CalculateVelocity", label = "The expected velocity is")    
      
      
    ),
    mainPanel
    (
      tabsetPanel
      (
        tabPanel("FindVelocity",
                 p(h4("Calculated output:")),
                 textOutput("Velocity"),
          
                 br(),
      
        ),
        tabPanel(
          "Documentation",
          p(h4("Velocity  calculator")),
          br(),
          helpText("Calculate the free fall velocity of an object falling from a height h just before it hits the ground"),
          
        )
        
      
        )
      )
    )
))
