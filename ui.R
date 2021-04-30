shinyUI(
    dashboardPage(
        dashboardHeader(title = "Example ShinyApp"),
        dashboardSidebar(
            sliderInput(inputId = "slider", 
                        label = "dynamically change the number of tabs by using the slider", 
                        min = 1, max = 5, value = 3, step = 1),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
    ),
    
    dashboardBody(
        fluidRow(
            box(width = 12,
                p(
                    mainPanel(width = 12,
                            column(width = 6, 
                                    tabsetPanel(
                                       tabPanel(
                                           "Reference",
                                           h3("Reference Content"),
                                           plotOutput("distPlot")
                                    ))
                                   ),
                            column(width = 6, uiOutput("comparison"))
                            )
                    )
                )
            )
        )
    )
)