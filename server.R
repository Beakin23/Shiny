#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        mpg    <- mtcars[, 1]
        bins <- seq(min(mpg), max(mpg), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(mpg, breaks = bins, col = 'blue', border = 'white', xlim = c(10,35))

    })

})
