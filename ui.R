
#install.packages('rsconnect')

#rsconnect::setAccountInfo(name='spencerng',
#                          token='5F68777372127B1564C10982BFFD1272',
#                          secret='yb5cx573yuG3/YFS0W2ZGvaU1sTP7K4pOr1quN9X')

#library(rsconnect)
#rsconnect::deployApp('C:/Users/spencer.ng/Desktop/TH training/R Code Training MMM/Data products/GDP')



#http://rpubs.com/jesvisser/pitch_my_shiny_app
#https://jesvisser.shinyapps.io/first_app/
#https://bkarmay.shinyapps.io/PricePredictorForDiamonds/
#https://github.com/BenKarmay/Peer-graded-Assignment-Course-Project-Shiny-Application-and-Reproducible-Pitch  
#http://rpubs.com/Saifeel/505148
#https://saifeel.shinyapps.io/project_9/
#https://jtzingsheim.shinyapps.io/Dice_Roll_Game/
#https://github.com/jtzingsheim1/Dice-Roll-Application/blob/master/app.R
#http://127.0.0.1:7197/

#install.packages("readxl")
library(readxl)
library(shiny)



# Define UI for application that draws a histogram
#Perform <- read_excel("C:/Users/spencer.ng/Desktop/TH training/R Code Training MMM/Data products/ASSIGNMENT/GDPcountry.xlsx")
#Perform <- read_excel("./GDPcountry.xlsx")

#ui <- fluidPage(
fluidPage(
  checkboxGroupInput("variable", "Economic indicators for comparison across countries:",
                     c("Population (K)" = "pop (K)",
                       "GDP (Bil)" = "IMFGDP (B)",
                       "Internet Population (Mil)" = "InternetPop (M)",
                       "Per Capita GDP" = "GdpPerCapita")),
  tableOutput("data")
)

# Application title
# titlePanel("GDP Comparison. Click on parameter to view economic indicator by country")


