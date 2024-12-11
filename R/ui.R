library(bslib)

#' Frontend UI layout
ui <- page_sidebar(
    title = "ADS-Planner",
    sidebar = sidebar(
        width = 350,
        card(
            fileInput("file", "R\u00E9sultats du sondage", accept = c(".xlsx", ".ods"), buttonLabel = "Parcourir...", placeholder = "Aucun fichier", multiple = FALSE),
        ),
        card(
            textInput("download_name", "Nom du fichier d'affectations", value = "affectations"),
            uiOutput("download_button"),
        ),
        card(
            "Filtres",
            uiOutput("filter_filiere"),
            textInput("filter_search", "Rechercher :"),
        ),
    ),
    navset_tab(
        nav_panel(
            "Visualisation v\u0153ux",
            uiOutput("vis_table"),
        ),
        nav_panel(
            "Sans r\u00E9ponse",
            "Not implemented yet.",
        ),
        nav_panel(
            "Affectations d\u00E9partements",
            div(
                actionButton("assign_hard", "Affectation \"dure\""),
                actionButton("assign_real", "Affectation r\u00E9elle"),
            ),
            "Not implemented yet.",
        ),
        nav_panel(
            "Affectations sessions",
            "Not implemented yet.",
        )
    ),
)
