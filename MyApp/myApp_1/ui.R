library(shiny)
library(ggplot2)
library(markdown)
library(knitr)

dataset <- mtcars

shinyUI(navbarPage("Parameters of Automobiles",
            tabPanel("Plot",
                     sidebarLayout(
                         sidebarPanel(
                             
                             #sliderInput('sampleSize', 'Sample Size', min=15, max=nrow(dataset),
                             #           value=min(15,nrow(dataset)), step=1, round=0),
                             
                             selectInput('x', 'X', names(dataset)),
                             selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
                             selectInput('color', 'Color', c('None', names(dataset)[c(2,8:11)])),
                             #selectInput('color', 'Color', c("darkblue","red"))
                             # ? How to give specific color? The code above create a bug, how to fix it?
                             
                             # Choose the way you want to fit the regression model: Jitter or Smooth or neither
                             checkboxInput('jitter', 'Jitter'),
                             checkboxInput('smooth', 'Smooth'),
                             
                             # For users, change the last parameter of selectInput, and see different facet
                             # For developers, choose the last parameter( a list ) carefully, 
                             # factors are the best!
                             selectInput('facet_row', 'Facet Row', c(None='.', names(dataset)[c(2,8:11)])),
                             selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)[c(2,8:11)]))
                         ),
                         
                         mainPanel(plotOutput('plot'))                         
                       )
                     ),
        
              #tabPanel("Tabel", dataTableOutput("table")),
                     
              
              
              navbarMenu("About",
                tabPanel("Variables",
                         fluidRow(
                             column(8,
                             includeMarkdown("about.Rmd")
                             #tags$small("Source: mtcars dataset from ggplot2 package")
                                 
                             ))), 
                #tabPanel("Data",fluidRow(column(7, print(mtcars)))),
                tabPanel("Docs",
                         fluidRow(
                             column(8,
                             includeMarkdown("about2.Rmd")
                             #tags$small(
                             #   "Sources: mtcars dataset from ggplot2 package")
                             )))
                ),
            
              navbarMenu("Code",
                 tabPanel("UI",
                          fluidRow(column(10, includeMarkdown("ui.Rmd")))),
                 tabPanel("Server",
                          fluidRow(column(10, includeMarkdown("server.Rmd"))))
               )

     )       
)
