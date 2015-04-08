library(shiny)
library(shinythemes)
shinyUI(
  fluidPage(theme = shinytheme("readable"),
  titlePanel("Make your Scatter Plot"),
  sidebarLayout(
    sidebarPanel(
      helpText("Make sure you have
               2 columns names as X and Y"),
      fileInput('file0', 'Choose file to upload',
                accept = c(
                  '.csv')
      ),
      
      checkboxInput('header', 'Header', TRUE),
      radioButtons('sep', 'Separator',
                   c(Comma=',',
                     Semicolon=';'
                     ),
                   ','),
      radioButtons('quote', 'Quote',
                   c(None='',
                     'Double Quote'='"',
                     'Single Quote'="'"),
                   '"')
      ),
    mainPanel(
      plotOutput('scatterplot')
      
    )
  )
))