library(shiny)
library(shinythemes)



ui <- fluidPage(theme = shinytheme("superhero"),
  navbarPage(
  
  tabPanel("Navbar 1",
           sidebarPanel(
             tags$h3("Input 1"),
             textInput("txt 1", "anything", ""),
             textInput("txt 2", "anything", ""),
           ),
  mainPanel(
    h1("Header 1"),
    h4("Header 4"),
    verbatimTextOutput("txtout"),
  )
  ),

tabPanel("Navigation 1", "Blank"),
tabPanel("Navigation 2", "Blank")
)
)

server = function(input, output){
  output$txtout <- renderText({
    paste(input$txt1, input$txt2, sep = "")
  })
  
  
}

shinyApp(ui = ui, server = server)
  
