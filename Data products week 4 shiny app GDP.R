library(shiny)
install.packages("readxl")

# Define UI for application that draws a histogram
Perform <- read_excel("C:/Users/spencer.ng/Desktop/TH training/R Code Training MMM/Data products/GDPcountry.xlsx")

ui <- fluidPage(
  checkboxGroupInput("variable", "Variables:",
                     c("Population (K)" = "pop (K)",
                       "GDP (Bil)" = "IMFGDP (B)",
                       "Internet Population (Mil)" = "InternetPop (M)",
                       "Per Capita GDP" = "GdpPerCapita")),
  tableOutput("data")
)

# Application title
titlePanel("GDP Comparison")



# Define server logic required to draw a histogram
server <- function(input, output) {
  output$data <- renderTable({
    Perform[, c("country", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

# Run the application 
shinyApp(ui = ui, server = server)
