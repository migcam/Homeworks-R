#Create a shiny application that displays a point chart from the iris set, the iris set table, 
#and the user can enter the color, size and symbol of the point drawn on the chart.

#install.packages("colourpicker")

library(shiny)
library(colourpicker)

MyApp <- fluidPage(
  colourInput("Color", "Select colour", value="red"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("size", "Point size", 1, 2, 1, 0.25),
      numericInput("Rows", "What is the number of rows?", 10, 1, nrow(iris))
    ),
    mainPanel(
      plotOutput("iris_plot"),
      tableOutput("iris_table")
    )
  )
)

server <- function(input, output) {
  output$iris_plot <- renderPlot({
    plot(iris$Sepal.Length,iris$Sepal.Width ,col = input$Color, cex = input$size)
  })
  
  output$iris_table<- renderTable({
    data <- iris[1:input$Rows, ]
    data
  })
}

shinyApp(ui = MyApp, server = server)


