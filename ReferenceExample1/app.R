####################################################################
# Shiny using R 
# Created by Subha Srinivasagan, NMSP, Cornell University 
# Date: February 17, 2025
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
# Find out more about building applications with Shiny here:
# https://shiny.posit.co/
####################################################################

#Shiny applications 
library(shiny)

# Define user interface for application 
ui <- fluidPage(
  
  # Displaying image
  img(src = "NMSP.png", height = "100px", width = "100px"),
  
  # Taking inputs
  textInput("name", "What is your name?"),
  numericInput("age", "How old are you?", value = NULL, min = 0),
  
  # Action button to trigger text display
  actionButton("show_text", "Show Text"),

  # Placeholder for output
  textOutput("text")

)

# Define server logic 
server <- function(input, output) {
  
  # output$text <- renderText(
  #   paste("Hello World, my name is",input$name, "and I am",input$age, "years old.")
  # )
  
  #Reactive value to store button click event
  text_reactive <- eventReactive(input$show_text, {
    paste("Hello World, my name is", input$name, "and I am", input$age, "years old.")
  })

  output$text <- renderText(text_reactive())
  
}

# Run the application 
shinyApp(ui = ui, server = server)






