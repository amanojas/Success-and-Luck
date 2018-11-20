library(shiny)
library(ggplot2)


ui <- fluidPage(
  sliderInput("iteration","Number of Iterations:", value = 100, min = 0, max = 10000),
  sliderInput("luck","Weightage of Luck:", value = 0.2, min = 0, max = 1, step = 0.01),
  actionButton("Submit","Submit"),
  plotOutput("h") 
)

server <- function(input, output, session) {
  observeEvent(input$Submit,{output$h = renderPlot({
    m = input$iteration
    p = input$luck
    luck_function(m,p)
    
  })})
  
}

shinyApp(ui, server)