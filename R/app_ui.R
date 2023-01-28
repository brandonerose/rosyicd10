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
    shinydashboardPlus::dashboardPage(
      options = list(
        sidebarExpandOnHover = F
      ),
      header = shinydashboardPlus::dashboardHeader(
        fixed = T,
        title = tagList(
          span(class = "logo-lg", .packageName),
          tags$a(
            href="https://thecodingdocs.com",
            target="_blank",
            tags$img(src = "www/logo.png", width="100%")
          )
        ),
        # titleWidth=0,
        leftUi = tagList(
          shinydashboardPlus::dropdownBlock(
            id = "controls",
            title = "Controls",
            icon = shiny::icon("sliders"),
            checkboxGroupInput(
              "level",
              "ICD10 Level(s): ",
              inline = T,
              choices = unique(ICD10$level),
              selected = unique(ICD10$level)
            )
          )
        )
      ),
      sidebar = shinydashboardPlus::dashboardSidebar(
        minified = F,
        collapsed = F,
        disable =F,
        TCD_SBH(),
        shinydashboard::valueBoxOutput("vb1",width = 12),
        fluidRow(
          column(
            12,
            uiOutput("remove_all1"),
            align="center")
        ),
        textOutput("text_check"),
        TCD_SBF()
      ),
      body = dashboardBody(
        br(),
        br(),
        fluidRow(
          box(
            title = h1("1. Select your codes here!"),
            width = 8,
            p("Use the filters on the top of the table!"),
            DT::DTOutput("all_table"),
            fluidRow(
              column(
                12,
                uiOutput("add"),
                align="center"
              )
            ),
            fluidRow(
              column(
                12,
                uiOutput("downloadData_all"),
                align="center"
              )
            )
          ),
          box(
            title = h1("Highlighted Code"),
            width = 4,
            fluidRow(
              valueBoxOutput("vb2",width = 6),valueBoxOutput("vb3",width = 6)
            ),
            listviewer::jsoneditOutput("selected_list"),
            fluidRow(
              p("In the future I can add a function for adding children?")
              # uiOutput("add_children_selected")
            )
          ),
          box(
            title = h1("2. Selected Codes!"),
            width = 12,
            p("Download at the bottom!"),
            DT::DTOutput("selected_table"),
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
        )

      ),
      controlbar = shinydashboardPlus::dashboardControlbar(
        TCD_SBH(),
        div(style="text-align:center",p(paste0('Version: ',pkg_version))),
        div(style="text-align:center",p(paste0('Last Updated: ',pkg_date))),
        TCD_SBF(),
        fluidRow(
          column(
            12,
            p("This app is still in development."),
            p("Consider donating for more."),
            p("Contact with issues."),
            p("Consider using R package."),
            align="center"
          )
        )
      ),
      title = "",
      footer = TCD_NF(),
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
