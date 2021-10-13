ui <- dashboardPage(
  dashboardHeader(title = "GEMS validation"),
  dashboardSidebar(
    selectInput("scenario", "Scenario",
                choices = scenario_list, selected = scenario_list[1]),
    selectInput("metric", "Metric",
                choices = metric_list, selected = metric_list[1]),
    selectInput("validation_dataset", "Validation Dataset",
                choices = validation_source, selected = validation_source[1]),
    selectInput("analysis_type", "Type of Analysis",
                choices = analysis_type, selected = analysis_type[1])
  ),
  
  
  dashboardBody(
    # Boxes need to be put in a row (or column)
    
    
    fluidRow(
      
      box(title = "Comparison chart", width = 8, plotOutput("plot1", height = 300)),
      column(3,
             #h3("Select analysis controls"),
             selectInput("microtype_selection", "Select Origin Microtype",
                         choices = microtype_list, selected = microtype_list[1]) 
             # checkboxGroupInput("Microtype_selection", label = h3("Microtypes"), 
             #                    choices = microtype_set,
             #                    selected = microtype_set),
             # checkboxGroupInput("mode_selection", label = h3("Select Modes"), 
             #                    choices = mode_set,
             #                    selected = mode_set)
             
      ),
      br()   
      
    )
  )
)