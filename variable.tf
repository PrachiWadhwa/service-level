variable "alert_condition" {
    type=map(object({
       type= string
        name= string
        description= string
        querry = string
        runbook_url= string
        enabled= bool
        violation_time_limit_seconds   = number
       fill_option                    = string
       fill_value                     = number
       aggregation_window             = number
      aggregation_method             = string
      aggregation_delay              = number
      expiration_duration            = number
      open_violation_on_expiration   = bool
      close_violations_on_expiration = bool
      slide_by                       = number
    critical_operator              = string
    critical_threshold             = number
    critical_threshold_duration    = number
    critical_threshold_occurrences = string
    warning_operator              = string
    warning_threshold             = number
    warning_threshold_duration    = number
    warning_threshold_occurrences = string
  
    }))
  
}

variable "mypolicy_name" {
  type= string
  
}


variable "newrelic_service_level" {
    type=map(object({
        name = string
        description = string
        guid = string
        from_valid= string
        where_valid=string 
        from = string
        where = string
        from_bad= string
        where_bad=string
        target=number
        count=number
        unit=string
        # flag=number
    }))
  
}
variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}
variable "region" {
  type = string
  
}

variable "destination" {
  type = map(object({
    name  = string
    type  = string
    key   = string
    value = string
  }))
}
variable "channel" {
  type = map(object({
    name           = string
    type           = string
    product          = string
    key_subject    = string
    key_subject_value =string
    key_detail        =string
    key_detail_value  =string
   
  }))

}


variable "workflow" {
  type=map(object({
  name                  = string
  muting_rules_handling = string
  name_Issue= string
  type = string
  attribute = string
  operator  = string
  }))

}


variable "dashboard" {
  type = map(object({
    permissions  =string
    page_name     =string
    dashboard_name= string
    billboard_title  = string
    billboard_row    = number
    billboard_column = number
    billboard_width  = number
    billboard_height = number
    billboard_query  = string
    billboard_title1  = string
    billboard_row1   = number
    billboard_column1 = number
    billboard_width1  = number
    billboard_height1 = number
    billboard_query1 = string
    billboard_title2  = string
    billboard_row2   = number
    billboard_column2 = number
    billboard_width2 = number
    billboard_height2 = number
    billboard_query2  = string
    line_title       = string
    line_row         = number
    line_column      = number
    line_width       = number
    line_height      = number
    line_query       = string
     line_title1       = string
    line_row1        = number
    line_column1     = number
    line_width1       = number
    line_height1      = number
    line_query1      = string
     line_title2       = string
    line_row2         = number
    line_column2     = number
    line_width2      = number
    line_height2     = number
    line_query2      = string
    bar_title        = string
    bar_row          = number
    bar_column       = number
    bar_width        = number
    bar_height       = number
    bar_query        = string
     bar_title1        = string
    bar_row1          = number
    bar_column1       = number
    bar_width1        = number
    bar_height1       = number
    bar_query1        = string
    bar_title2       = string
    bar_row2          = number
    bar_column2       = number
    bar_width2        = number
    bar_height2      = number
    bar_query2      = string

    table_title      = string
    table_row        = number
    table_column     = number
    table_width      = number
    table_height     = number
    table_query      = string

    table_title1      = string
    table_row1        = number
    table_column1     = number
    table_width1      = number
    table_height1     = number
    table_query1      = string

    table_title2     = string
    table_row2        = number
    table_column2    = number
    table_width2      = number
    table_height2    = number
    table_query2      = string

    markdown_title   = string
    markdown_row     = number
    markdown_column  = number
    markdown_width   = number
    markdown_height  = number
    markdown_text    = string

    markdown_title1   = string
    markdown_row1     = number
    markdown_column1  = number
    markdown_width1   = number
    markdown_height1  = number
    markdown_text1    = string

    markdown_title2   = string
    markdown_row2     = number
    markdown_column2  = number
    markdown_width2   = number
    markdown_height2  = number
    markdown_text2    = string
  }))
}

variable "billboard" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}


variable "bar" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "table" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "line" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    query  = string
  }))

}

variable "markdown" {
    type = map(object({
    title  = string
    row    = number
    column = number
    width  = number
    height = number
    text  = string
  }))

}
variable "dashboard_name" {
  type = string
}
variable "permissions" {
  type = string
}
variable "page_name" {
  type = string
}
variable "workload"{
    type= map(object({
        name= string
        entity_guids= string
        query=string
        
    }))
   
}
variable  entity{
   type= map(object({
    guid= string
    key= string
    values=list(string)
    key2= string
    value2= list(string)

})) 
}

variable "drop_rule" {
  type = map(object({
    description = string
    action      = string
    nrql        = string
  }))
}

variable "newrelic_log_parsing_rule" {
  type = map(object({
    name        = string
    attribute   = string
    enabled     = bool
    grok        = string
    lucene      = string
    nrql        = string
  }))
}

