shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        # generate bins based 
        x    <- rnorm(10000) 
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(x, breaks = bins)
    })
    
    output$comparison <- renderUI({
        req(input$slider)
        
        myTabs <- lapply(1:input$slider, function(i) {
            
            tabPanel(title = glue("Tab {i}"),
                     h3(glue("Content {i}")),
                     "This is a dockerized WebApplication based on Shiny run from Azure",
                     "- RT"
            )
        })
        do.call(tabsetPanel, myTabs)
    })
})
