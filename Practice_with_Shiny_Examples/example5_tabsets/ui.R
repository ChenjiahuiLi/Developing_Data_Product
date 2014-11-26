library(shiny)
library(datasets)


shinyUI(fluidPage(
    
    # Application title
    headerPanel("Tabsets"),
    # containing input controls   
    sidebarPanel(
        radioButtons("dist","Distribution type:",
                    list("Normal" = "norm",
                         "Uniform" = "unif",
                         "Log-normal" = "lnorm",
                         "Exponential" = "exp")),
        
        br(), # 中间空一排
        
        sliderInput("n",
                    "Number of observations:",
                    value = 500,
                    min = 1,
                    max = 1000)
    ), 
    # containing outputs
    mainPanel(
        tabsetPanel(type = "tabs",
            tabPanel("Plot", plotOutput("plot")),
            tabPanel("Summary", verbatimTextOutput("summary")),
            tabPanel("Table", tableOutput("table"))
            )
        )     
)
)
