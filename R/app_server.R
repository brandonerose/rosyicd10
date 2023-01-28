#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboard
#' @noRd
app_server <- function(input, output, session) {
  # table<-reactive(ICD10[which(ICD10$level%in%input$level),])
  values<-reactiveValues()
  values$codes<-NULL
  values$selected<-NULL
  values$level<-NULL
  values$level_clean<-NULL
  # tables------
  output$all_table<-DT::renderDT({
    ICD10[which(ICD10$level%in%input$level),] %>% make_table()
  })
  output$selected_table<-DT::renderDT({
    ICD10[which(ICD10$code%in%values$codes),] %>% make_table(selection="multiple")
  })
  # text-----
  output$text_check<-renderText({
    # as.character(input$all_table_cell_clicked)
  })
  # ui --------
  output$add<-renderUI({
    actionButton("add_",paste0("Add Above Rows (", formatC(length(input$all_table_rows_all), format="d", big.mark=","),")"))
  })
  output$remove<-renderUI({
    actionButton("remove_",paste0("Remove Highlighted Rows (", formatC(length(input$selected_table_rows_selected), format="d", big.mark=","),")"))
  })
  output$remove_all1<-renderUI({
    actionButton("remove_all1_",paste0("Remove All Codes (", formatC(length(values$codes), format="d", big.mark=","),")"))
  })
  output$remove_all2<-renderUI({
    actionButton("remove_all2_",paste0("Remove All Codes (", formatC(length(values$codes), format="d", big.mark=","),")"))
  })
  output$downloadData_all<-renderUI({
    downloadButton('downloadData_all_', paste0('Download Above Report (',formatC(length(input$all_table_rows_all), format="d", big.mark=","),")"), style="display: block; margin: 0 auto; width: 230px;color: black;")
  })
  output$downloadData_selected<-renderUI({
    downloadButton('downloadData_selected_', paste0('Download Above Report (',formatC(length(values$codes), format="d", big.mark=","),")"), style="display: block; margin: 0 auto; width: 230px;color: black;")
  })
  # output$add_children_selected<-renderUI({
  #   actionButton('add_children_selected_', paste0('Add above children (',formatC(length(values$codes), format="d", big.mark=","),")"), style="display: block; margin: 0 auto; width: 230px;color: black;")
  # })
  # observes------

  output$downloadData_all_ <- downloadHandler(
    filename = function() {
      gsub(" ","_",paste("rosyicd10_filter_", Sys.time(), ".csv", sep=""))
    },
    content = function(file) {
      write.csv(ICD10[which(ICD10$level%in%input$level),][input$all_table_rows_all,], file,row.names = F)
    })
  output$downloadData_selected_ <- downloadHandler(
    filename = function() {
      gsub(" ","_",paste("rosyicd10_selected_", Sys.time(), ".csv", sep=""))
    },
    content = function(file) {
      write.csv(ICD10[which(ICD10$code%in%values$codes),], file,row.names = F)
    })

  observe({
    input$remove_all1_
    input$remove_all2_
    values$codes<-NULL
    values$selected<-NULL
    values$level<-NULL
    values$level_clean<-NULL
  })
  observeEvent(input$all_table_rows_selected,ignoreInit = T,{
    values$selected<-ICD10$code[which(ICD10$level%in%input$level)][input$all_table_rows_selected]
    values$level<-ICD10$level[which(ICD10$level%in%input$level)][input$all_table_rows_selected]
    if(values$level=="diag1"){
      values$level_clean<-"1"
    }
    if(values$level=="diag2"){
      values$level_clean<-"2"
    }
    if(values$level=="diag3"){
      values$level_clean<-"3"
    }
    if(values$level=="diag4"){
      values$level_clean<-"4"
    }
    if(values$level=="diag5"){
      values$level_clean<-"5"
    }
    values$codes<-values$codes %>% append(values$selected)  %>% drop_if(c("",NULL,NA,"NA",as.character(1:30)))%>% unique()
  })

  observeEvent(input$add_,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10[which(ICD10$level%in%input$level),]$code[input$all_table_rows_all])  %>% drop_if(c("",NULL,NA,"NA",as.character(1:30)))%>% unique()
  })
  observeEvent(input$remove_,ignoreInit = T,{
    values$codes<-values$codes[which(!values$codes%in%ICD10$code[which(ICD10$code%in%values$codes)][input$selected_table_rows_selected])]
  })

  # valuebox -------
  output$vb1<-shinydashboard::renderValueBox({
    shinydashboard::valueBox(
      value = values$codes %>% length(),
      subtitle = "Selected Codes", width = 12
    )
  })
  output$vb2<-shinydashboard::renderValueBox({
    shinydashboard::valueBox(
      value = values$selected,
      subtitle = "Selected Code"
    )
  })
  output$vb3<-shinydashboard::renderValueBox({
    shinydashboard::valueBox(
      value = values$level_clean ,
      subtitle = "Selected Level"
    )
  })
  # list -----
  output$selected_list<-listviewer::renderJsonedit({


    x<-NULL
    if(
      values$level%in%c(
        "diag1",
        "diag2",
        "diag3",
        "diag4",
        "diag5"
      )
    ){
      if(values$level=="diag1"){
        x<-listviewer::jsonedit(
          mode="view",
          ICD10_list[values$selected]
        ) %>% htmlwidgets::onRender("function(el,x,data) {this.editor.expandAll();}")
      }
      if(values$level=="diag2"){
        x<-listviewer::jsonedit(
          mode="view",
          ICD10_list[[values$selected %>% strtrim(3)]][values$selected]
        ) %>% htmlwidgets::onRender("function(el,x,data) {this.editor.expandAll();}")
      }
      if(values$level=="diag3"){
        x<-listviewer::jsonedit(
          mode="view",
          ICD10_list[[values$selected %>% strtrim(3)]][[values$selected %>% strtrim(5)]][values$selected]
        ) %>% htmlwidgets::onRender("function(el,x,data) {this.editor.expandAll();}")
      }
      if(values$level=="diag4"){
        x<-listviewer::jsonedit(
          mode="view",
          ICD10_list[[values$selected %>% strtrim(3)]][[values$selected %>% strtrim(5)]][[values$selected %>% strtrim(6)]][values$selected]
        ) %>% htmlwidgets::onRender("function(el,x,data) {this.editor.expandAll();}")
      }
      if(values$level=="diag5"){
        x<-listviewer::jsonedit(
          mode="view",
          ICD10_list[[values$selected %>% strtrim(3)]][[values$selected %>% strtrim(5)]][[values$selected %>% strtrim(6)]][[values$selected %>% strtrim(5)]][[values$selected %>% strtrim(7)]][values$selected]
        ) %>% htmlwidgets::onRender("function(el,x,data) {this.editor.expandAll();}")
      }
    }
    x
  })

}
