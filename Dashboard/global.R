#library(shiny)
library(shinydashboard)
library(plotly)
library(ggplot2)

scenario_list <- c('Geotype A')
metric_list <- c('Mode split', 'Speed', 'trip Count', 'Trip travel time', 'Zonal VMT')
validation_source <- c('NHTS', 'NPMRDS')
analysis_type <- c('Visualization', 'Summary statistics')
microtype_set <- list("Microtype 1" = 1, "Microtype 2" = 2, 
                      "Microtype 3" = 3, "Microtype 4" = 4, 
                      "Microtype 5" = 5, "Microtype 6" = 6)
microtype_list <- c(1, 2, 3, 4, 5, 6)
geotype_set <- list("Geotype A" = 1, "Geotype B" = 2, "Geotype C" = 3)
mode_set <- list('Auto' = 'auto', 'Bus' = 'bus', 'Biking' = 'bike', 'Walking' = 'walk')
mode_list <- c('auto', 'bus', 'bike', 'walk')
sample_model_output <- read.csv('Data/Geotype-A_GEMS_mode-split.csv')
sample_validation_output <- read.csv('Data/Geotype-A_NHTS_mode-split.csv')
sample_mode_split_validation <- rbind(sample_model_output, sample_validation_output)
