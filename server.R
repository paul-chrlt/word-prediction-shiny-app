library(shiny)
source("./guess.R")
lightcountfolder <- "./lightletters/"
lightfolder <- "./lightfletters/"
shinyServer(function(input, output) {
    reactive({
        print("reactive")
        guessed <- searchinsummary(input$phrase)
    })
#        output$suggestions <- renderText(searchinsummary(input$phrase,lightfolder))
        output$suggestionscount <- renderText(searchinsummary(input$phrase,lightcountfolder))
})