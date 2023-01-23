#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    dashboardPage(
      dashboardHeader(
        title = "rosyicd10"
      ),
      dashboardSidebar(
        sidebarMenu(
          div(
            style="text-align:center",
            tags$a(
              href="https://thecodingdocs.com",
              target="_blank",
              tags$img(src = "www/logo.png", width="80%")
            )
          ),
          fluidRow(
            column(
              12,
              shiny::actionButton(
                inputId='ab1',
                label="TheCodingDocs.com",
                icon = icon("stethoscope"),
                onclick ="window.open('https://thecodingdocs.com', '_blank')"),
              align="center")
          ),
          fluidRow(
            column(
              12,
              shiny::actionButton(
                inputId='ab2',
                label="GitHub Code",
                icon = icon("github"),
                onclick ="window.open('https://github.com/brandonerose/rosyicd10', '_blank')"
              ),
              align="center")
          ),
          fluidRow(
            column(
              12,
              shiny::actionButton(
                inputId='ab3',
                label="TheCodingDocs Twitter",
                icon = icon("twitter"),
                onclick ="window.open('https://twitter.com/TheCodingDocs', '_blank')"
              ),
              align="center"
            )
          ),
          fluidRow(
            column(
              12,
              shiny::actionButton(
                inputId='ab4',
                label="BRoseMDMPH Twitter",
                icon = icon("square-twitter"),
                onclick ="window.open('https://twitter.com/BRoseMDMPH', '_blank')"
              ),
              align="center")
          ),

          div(style="text-align:center",p(paste0('Version: 1.0.0'))),
          div(style="text-align:center",p(paste0('Last Updated: 1/23/23'))),
          menuItem("All ICD-10s", tabName = "all_tab"),
          menuItem("Chapters", tabName = "chapter_tab"),
          menuItem("Sections", tabName = "section_tab"),
          menuItem("Level 1s", tabName = "level1_tab"),
          menuItem("Level 2s", tabName = "level2_tab"),
          menuItem("Level 3s", tabName = "level3_tab"),
          menuItem("Level 4s", tabName = "level4_tab"),
          menuItem("Level 5s", tabName = "level5_tab"),
          shinydashboard::valueBoxOutput("vb1",width = 12),
          fluidRow(
            column(
              12,
              uiOutput("remove_all1"),
              align="center")
          ),
          textOutput("text_check")
        )
      ),
      dashboardBody(
        tabItems(
          tabItem(
            tabName = "all_tab",
            fluidRow(checkboxGroupInput(
              "level",
              "Level(s): ",
              inline = T,
              choices = unique(ICD10$level),
              selected = unique(ICD10$level)
            )),
            fluidRow(
              DT::DTOutput("all_table")
            ),
            fluidRow(
              column(
                12,
                uiOutput("add"),
                align="center")
            ),
            fluidRow(
              column(
                12,
                uiOutput("downloadData_all"),
                align="center")
            ),

            h2("Selected Codes"),
            fluidRow(DT::DTOutput("selected_table")),
            fluidRow(
              column(
                12,
                uiOutput("remove"),
                align="center")
            ),
            fluidRow(
              column(
                12,
                uiOutput("remove_all2"),
                align="center")
            ),

            uiOutput("downloadData_selected")

          ),
          tabItem(
            tabName = "chapter_tab",
            fluidRow(DT::DTOutput("chapter_table"))
          ),
          tabItem(
            tabName = "section_tab",
            fluidRow(DT::DTOutput("section_table"))
          ),
          tabItem(
            tabName = "level1_tab",
            fluidRow(DT::DTOutput("level1_table"))
          ),
          tabItem(
            tabName = "level2_tab",
            fluidRow(DT::DTOutput("level2_table"))
          ),
          tabItem(
            tabName = "level3_tab",
            fluidRow(DT::DTOutput("level3_table"))
          ),
          tabItem(
            tabName = "level4_tab",
            fluidRow(DT::DTOutput("level4_table"))
          ),
          tabItem(
            tabName = "level5_tab",
            fluidRow(DT::DTOutput("level5_table"))
          )
        )
      ),
      skin = "green"
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(ext = 'png'),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "rosyicd10"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
