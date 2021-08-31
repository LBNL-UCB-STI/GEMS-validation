library(shinydashboard)

metric_list <- c('Mode split', 'Speed', 'trip Count', 'Trip travel time', 'Zonal VMT')
validation_type <- c('Reliability', 'Accuracy')
analysis_type <- c('Visualization', 'Summary statistics')
microtype_set <- list("Microtype 1" = 1, "Microtype 2" = 2, 
                      "Microtype 3" = 3, "Microtype 4" = 4, 
                      "Microtype 5" = 5, "Microtype 6" = 6)
geotype_set <- list("Geotype A" = 1, "Geotype B" = 2, "Geotype C" = 3)

ui <- dashboardPage(
  dashboardHeader(title = "GEMS validation"),
  dashboardSidebar(
    selectInput("metric", "Metric",
                choices = metric_list, selected = metric_list[2]),
    selectInput("validation_type", "Type of Validation",
                choices = validation_type, selected = validation_type[2]),
    selectInput("analysis_type", "Type of Analysis",
                choices = analysis_type, selected = analysis_type[1])
  ),

 
  dashboardBody(
    # Boxes need to be put in a row (or column)


    fluidRow(

      box(title = "Speed comparison", width = 8, plotOutput("plot1", height = 300)),
      column(3,
             #h3("Select analysis controls"),
             checkboxGroupInput("Geotype_selection", label = h3("Geotypes"), 
                                choices = geotype_set,
                                selected = geotype_set[1]),
             checkboxGroupInput("Microtype_selection", label = h3("Microtypes"), 
                                choices = microtype_set,
                                selected = microtype_set)
             
      ),
      br()   

    )
  )
)

server <- function(input, output) {

  
  output$plot1 <-  renderImage({
    return(list(src = "/Users/xiaodanxu/Documents/GitHub/GEMS-validation/Dashboard/Image/sample_speed_comparison_filtered_freeway.png",
                width=440, height=280, contentType = "image/png",alt = "Alignment"))
  }, deleteFile = FALSE) #where the src is wherever you have the picture
}

shinyApp(ui, server)
