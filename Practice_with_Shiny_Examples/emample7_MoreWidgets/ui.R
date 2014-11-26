library(shiny)

shinyUI(pageWithSidebar(
    # UI title
    headerPanel("More Widgets"),
    # Sidebar
    sidebarPanel(
     selectInput("dataset","Choose a dataset:",
                 choices = c("rock","pressure","cars")),
     dr(),
     numericInput("obs","Number of obsevations to view:",10),
     helpText("Note: while the data view will show only the specified",
              "number of observations, the summary will still be based",
              "on the full dataset.")
     submitButton("Updata View")
    ),
    # Mainpanel
    mainPanel(
        h4("Summary")), # name of the block
        verbatimTextOutput("summary"),
       
        h4("Observations") # name of the block
        tableOutput("View")
))