#' Pipe operator
#'
#' See \code{magrittr::\link[magrittr:pipe]{\%>\%}} for details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
#' @param lhs A value or the magrittr placeholder.
#' @param rhs A function call using the magrittr semantics.
#' @return The result of calling `rhs(lhs)`.
NULL

pkg_name<-.packageName
pkg_version<-utils::packageVersion(.packageName) %>% as.character()
pkg_date<-Sys.Date()


drop_if <- function(x,drops) {
  x[which(!x%in%drops)]
}

make_table<-function(DF,selection="single"){
  DT::datatable(DF,
                selection = selection,
                editable = F,
                rownames = F,
                # extensions = 'Buttons',
                options = list(
                  columnDefs = list(list(className = 'dt-center',targets = "_all")),
                  paging = T,
                  pageLength = 50,
                  fixedColumns = TRUE,
                  ordering = TRUE,
                  scrollY = "300px",
                  scrollX = T,
                  # autoWidth = T,
                  searching = T,
                  # dom = 'Bfrtip',
                  # buttons = c('csv', 'excel',"pdf"),
                  scrollCollapse = F,
                  stateSave = F
                ),
                class = "cell-border",
                filter = 'top',
                escape =F
  )
}



