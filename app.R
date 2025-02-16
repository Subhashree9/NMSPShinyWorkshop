####################################################################
# Shiny using R 
# Created by Subha Srinivasagan, NMSP, Cornell University 
# Date: February 17, 2025
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
# Find out more about building applications with Shiny here:
# https://shiny.posit.co/
####################################################################

# Install Shiny pakage 
install.packages("shiny")

#Shiny applications 
library(shiny)

# Define user interface for application 
ui <- fluidPage(
)

# Define server logic 
server <- function(input, output) {
}

# Run the application 
shinyApp(ui = ui, server = server)
