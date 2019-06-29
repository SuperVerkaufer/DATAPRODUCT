
Perform <- read_excel("./GDPcountry.xlsx")


# Define server logic required to draw a histogram
server <- function(input, output) {
  output$data <- renderTable({
    Perform[, c("country", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

# Run the application 
#shinyApp(ui = ui, server = server)
#shinyApp(ui, server)
