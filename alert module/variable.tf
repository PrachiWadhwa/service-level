variable "alert_condition" {
    type=map(object({
      type= string
      name= string
     description= string
      querry = string
      runbook_url= string
      enabled= bool
      violation_time_limit_seconds  = number
      fill_option                   = string
      fill_value                    = number
      aggregation_window            = number
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

variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}
variable "region" {
  type = string
  
}