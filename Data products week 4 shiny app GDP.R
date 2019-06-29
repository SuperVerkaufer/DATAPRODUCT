#install.packages("readxl")
library(readxl)
library(shiny)



# Define UI for application that draws a histogram
#Perform <- read_excel("C:/Users/spencer.ng/Desktop/TH training/R Code Training MMM/Data products/ASSIGNMENT/GDPcountry.xlsx")
Perform <- read_excel("./GDPcountry.xlsx")

ui <- fluidPage(
  checkboxGroupInput("variable", "Variables:",
                     c("Population (K)" = "pop (K)",
                       "GDP (Bil)" = "IMFGDP (B)",
                       "Internet Population (Mil)" = "InternetPop (M)",
                       "Per Capita GDP" = "GdpPerCapita")),
  tableOutput("data")
)

# Application title
titlePanel("GDP Comparison. Click on parameter to view economic indicator by country")



# Define server logic required to draw a histogram
server <- function(input, output) {
  output$data <- renderTable({
    Perform[, c("country", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

#shinyApp(ui = ui, server = server)
shinyApp(ui = ui, server = server)
