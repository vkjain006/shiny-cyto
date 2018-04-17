#' @import shiny
#' @export
runApp <-
    function()
{
    app <- shinyApp(
        ui = bootstrapPage(
           numericInput('n', 'Number of obs', 100),
           plotOutput('plot')
         ),
         server = function(input, output) {
           output$plot <- renderPlot({ hist(runif(input$n)) })
         }
    )
    shiny::runApp(app)
}
