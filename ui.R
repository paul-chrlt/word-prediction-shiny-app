library(shiny)

shinyUI(fluidPage(
    tags$head(
        tags$style(HTML(
            "
            body{
            background-color:#e6f9e0;
            }
            h2{
            text-align:center;
            margin-bottom:50px;
            margin-top:0px;
            }
            .container-fluid{
            margin-top:20px;
            max-width:300px;
            padding:30px;
            padding-bottom:5px;
            background-color:white;
            border-radius:5px;
            }
            .shiny-text-output{
            text-align:center;
            margin-top:10px;
            }
            .form-group{
            margin-top:10px;
            }
            "
        ))
    ),
    titlePanel("word prediction"),
    
    fluidRow(
            textInput("phrase","Sentence",width='100%'),
            submitButton(text="Guess the next word",width ='100%'),
            textOutput("suggestionscount"),
            selectInput("number","number of propositions",choices = c(1,3))
    )
    )
)
