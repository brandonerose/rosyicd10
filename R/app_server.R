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
  # tables------
  output$all_table<-DT::renderDT({
    ICD10[which(ICD10$level%in%input$level),] %>% make_table()
  })
  output$chapter_table<-DT::renderDT({
    ICD10c %>% make_table()
  })
  output$section_table<-DT::renderDT({
    ICD10s %>% make_table()
  })
  output$level1_table<-DT::renderDT({
    ICD10l1 %>% make_table()
  })
  output$level2_table<-DT::renderDT({
    ICD10l2 %>% make_table()
  })
  output$level3_table<-DT::renderDT({
    ICD10l3 %>% make_table()
  })
  output$level4_table<-DT::renderDT({
    ICD10l4 %>% make_table()
  })
  output$level5_table<-DT::renderDT({
    ICD10l5 %>% make_table()
  })
  output$selected_table<-DT::renderDT({
    ICD10[which(ICD10$code%in%values$codes),] %>% make_table()
  })
  #text-----
  output$text_check<-renderText({
    # values$codes
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
  #observes------

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
  })
  observeEvent(input$all_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10$code[which(ICD10$level%in%input$level)][input$all_table_rows_selected])  %>% drop_if(c("",NULL,NA,"NA",as.character(1:30)))%>% unique()
  })
  observeEvent(input$chapter_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10c$code[input$chapter_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$section_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10s$code[input$section_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$level1_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10l1$code[input$level1_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$level2_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10l2$code[input$level2_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$level3_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10l3$code[input$level3_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$level4_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10l4$code[input$level4_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$level5_table_rows_selected,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10l5$code[input$level5_table_rows_selected]) %>% drop_if(c("",NULL,NA,"NA",as.character(1:30))) %>% unique()
  })
  observeEvent(input$add_,ignoreInit = T,{
    values$codes<-values$codes %>% append(ICD10[which(ICD10$level%in%input$level),]$code[input$all_table_rows_all])  %>% drop_if(c("",NULL,NA,"NA",as.character(1:30)))%>% unique()
  })
  observeEvent(input$remove_,ignoreInit = T,{
    values$codes<-values$codes[which(!values$codes%in%ICD10$code[which(ICD10$code%in%values$codes)][input$selected_table_rows_selected])]
  })

  #valuebox -------
  output$vb1<-shinydashboard::renderValueBox({
    shinydashboard::valueBox(
      value = values$codes %>% length(),
      subtitle = "Selected Codes", width = 12
    )
  })
}
