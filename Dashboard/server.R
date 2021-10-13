library(shiny)

shinyServer(function(input, output, session){
  
  
  output$plot1 <- renderPlot({
    validation_data <- sample_mode_split_validation[sample_mode_split_validation$origin.microtype == strtoi(input$microtype_selection),]
    #print(validation_data)
    ggplot(validation_data, aes(x = mode, y = fraction, fill = source)) +
      geom_col(position = position_dodge())
   })
})