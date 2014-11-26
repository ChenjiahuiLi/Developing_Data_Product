library(shiny)
library(datasets)


# Define server logic required to plot various variables against mpg
shinyServer(function(input,output){
    
    # Compute the forumla text in a reactive expression since it is
    # shared by the output$caption and output$mpgPlot expressions
    data <- reactive({
        dist <- switch(input$dist,
                       norm = rnorm,
                       unif = runif,
                       lnorm = rlnorm,
                       exp = rexp,
                       rnorm)  # why is rnorm here?
        dist(input$n)        
    })
        
    output$plot <- renderPlot({
        # where's our data?
        dist <- input$dist  # no comma "," here!
        n <- input$n
        # make a plot
        hist(data(),
             main = paste('r',dist,'(',n,')',sep=''))
    })
    
    output$summary <- renderPrint({summary(data())})
    
    output$table <- renderTable({data.frame(x=data())})
    
})