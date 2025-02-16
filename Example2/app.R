####################################################################
# Shiny using R - Simple Calculator
# Created by Subha Srinivasagan, NMSP, Cornell University 
# Date: February 17, 2025
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
# Find out more about building applications with Shiny here:
# https://shiny.posit.co/
####################################################################

# Install shiny app package 
library(shiny)

# Define user interface for application 
ui <- fluidPage(
  
  # Title with additional name below it
  titlePanel(
    div(
      "Simple Calculator", 
      tags$h6("Created by YOUR NAME, NMSP, Cornell University") # Adding a subtitle
    )
  ),
  
  # Displaying image
  img(src = "Calculator.jpg", height = "100px", width = "100px"),
  
  # Taking inputs
  numericInput("num1", "Enter first number:", value = NULL),
  numericInput("num2", "Enter second number:", value = NULL),
  
  # Action buttons for each operation

  actionButton("add", "Addition (+)"),

  
  # Line break
  br(), br(),
  
  # Display result
  textOutput("result")
)

# Define server logic 
server <- function(input, output) {
  
  # Reactive event for addition
  add_result <- eventReactive(input$add, {
    paste("Result:", input$num1 + input$num2)
  })
  
  
  # Render result dynamically based on button click
  output$result <- renderText({
    if (input$add > 0) return(add_result())
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

