

#' Title 预览数据
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples viewacctserver()  
krmesdeptsrcmatadataserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesdeptsrcmatadata_view,
                        {
                            sql = 'select * from rds_kr_mes_src_bd_department'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('更新已排',
                                            '编码',
                                            '助记码',
                                            '描述',
                                            '名称',
                                            '上级部门',
                                            'HR部门',
                                            '来源于s-HR',
                                            '生效日期',
                                            '失效日期',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '禁用人',
                                            '部门分组',
                                            '部门属性',
                                            '禁用日期',
                                            'WIP仓库',
                                            'WIP仓位',
                                            '数据状态',
                                            '禁用状态',
                                            '部门全称',
                                            '创建组织',
                                            '使用组织',
                                            '是否明细部门'
                                            
                                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesdeptsrcmatadata_view_data', data = data)
                            
                            
                 
                          
                        })
    
  })
}



#' Title 后台处理总函数
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples HrvServer()
krmesdeptsrcmatadataServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesdeptsrcmatadataserver(input,output,session,dms_token)

}
