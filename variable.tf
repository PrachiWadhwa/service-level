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