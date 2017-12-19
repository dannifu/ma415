#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(leaflet)
library(memoise)



ui <- navbarPage(
  title = "Tweets that Mentioning christmas",
  navbarMenu(
    title = "Geolocation Study",
    tabPanel("United States",
             div("I started to map all tweets mentioning christmas all over the United States"),
             div("Each red point represents each tweet"),
             div("I found that there are some clustering among California, New York and Masschusetts, so later when I plotted, I included those three states in comparison."),
             splitLayout(img(src="US.png", align = "center"))),
    tabPanel("New York State",
             div("This map shows all Tweets mentiong christma hashtags around New York."),
             div("Each orange point represents each tweet"),
             splitLayout(img(src="NY.png", align = "center"))),
    tabPanel("Massechusetts", 
             div("This map shows all Tweets mentiong christma hashtags around Massachussettes."),
             div("Each green point represents each tweet"),
             splitLayout(img(src="MA.png", align = "center"))),
    tabPanel("California",
             div("This map shows all Tweets mentiong christma hashtags around California."),
             div("Each blue point represents each tweet"),
             splitLayout(img(src="CA.png", align = "center")))),
  navbarMenu(
    title = "Statistical Model",
    tabPanel("Matrix Plot",
             div("This graph shows that all the regression plot between a pair of information vaiables from each user. From this plot, we can find the two variable that might have a significant simple linear regression"),
             splitLayout(img(src="matrixplot.JPG", align = "center"))),
    tabPanel("Regression Plot", 
             div("This shows the regression model of variable, follows_count and listed_count"),
             splitLayout(img(src="regplot.JPG", align = "center"))),
    tabPanel("Residual and Q-Q Plot",
             div("The residual plot shows the randomness which means the model is valid."),
             div("The Normal Q-Q plot is normal which can be use to say the model is valid. "),
             splitLayout(img(src="resPlot.JPG", align = "center"))))
)
 

server <- function(session,input,output){
  
}

shinyApp(ui = ui, server = server)
