library(shinyapps)
shinyapps::setAccountInfo(name='komalsrathi', 
                          token='B8C8844D258BEBA4C73D9843FAD51398', 
                          secret='o9Q0H+6o5BVt+AQZ8RVES9gziT0ThbT4auQT3nu6')
shinyapps::deployApp('topGO_shinyapp')
shinyapps::terminateApp('topGO_shinyapp')


shinyapps::setAccountInfo(name='komalrathi',
                          token='4E5382D4D18A15762A05EB1E0CCD8871',
                          secret='<SECRET>')
shinyapps::deployApp('topGO_shiny_dashboard')
