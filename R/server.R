library(shiny)

source("R/input.R")

#' Backend server logic
#' @param input Input data from the frontend
#' @param output Output data the frontend will receive
server <- function(input, output) {
    data <- reactive({
        if (is.null(input$file)) {
            return(NULL)
        }
        parse_file(input$file$datapath[1])
    })

    observeEvent(input$assign_hard, {
        showNotification("Not implemented yet.", type = "warning")
    })

    observeEvent(input$assign_real, {
        showNotification("Not implemented yet.", type = "warning")
    })

    output$download_button <- renderUI({
        downloadButton("download", paste("T\u00E9l\u00E9charger ", input$download_name, ".xlsx", sep = ""))
    })

    output$download <- downloadHandler(
        filename = function() {
            paste(input$download_name, ".xlsx", sep = "")
        },
        content = function(file) {
            write("Not implemented yet.", file)
        }
    )

    output$filter_filiere <- renderUI(
        selectInput(
            "select_filiere",
            "Fili\u00E8res :",
            data()$Filiere,
            multiple = TRUE,
        )
    )

    filtered_data <- reactive({
        filtered_data <- data()
        if (length(input$select_filiere) > 0) {
            filtered_data <- filtered_data[filtered_data$Filiere %in% input$select_filiere, ]
        }
        filtered_data <- filtered_data[
            grepl(tolower(input$filter_search), tolower(filtered_data[["Nom"]]), fixed = TRUE)
            | grepl(tolower(input$filter_search), tolower(filtered_data[["Prenom"]]), fixed = TRUE)
            | grepl(tolower(input$filter_search), tolower(paste(filtered_data[["Prenom"]], filtered_data[["Nom"]])), fixed = TRUE)
            | grepl(tolower(input$filter_search), tolower(paste(filtered_data[["Nom"]], filtered_data[["Prenom"]])), fixed = TRUE),
        ]
        filtered_data
    })

    output$vis_table <- renderTable(
        {
            filtered_data()[, !grepl("^Aff", names(filtered_data()))]
        },
        striped = TRUE
    )

    output$vis <- renderUI({
        if (is.null(input$file)) {
            HTML('<div style="display: flex; justify-content: center; align-items: center; height: 100vh; font-weight: bold;">Veuillez charger un fichier pour commencer.</div>')
        } else {
            tableOutput("vis_table")
        }
    })
}
