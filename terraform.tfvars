alert_condition = {
  condition1 = {
    type              ="static"
    name              = "Condition 1"
    description       = "Alert when transactions are taking too long"
    querry            = "SELECT average(duration) FROM Transaction where appName = 'mylink'"
     runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    critical_operator              = "above"
    critical_threshold             = 1
    critical_threshold_duration    = 60
    critical_threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
  }
  condition2 = {
    type              ="static"
    name              = "Condition 2"
    description       = "Alert when httpsttatus code is high"
    querry             = "SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    critical_operator              = "above"
    critical_threshold             = 1
    critical_threshold_duration    = 60
    critical_threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
   
  }
  condition3 = {
    type              ="static"
    name              = "Condition 3"
    description       = "Alert when total time is high "
    querry             = "SELECT  sum(totalTime) FROM Transaction WHERE appName='mylink'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    critical_operator              = "above"
    critical_threshold             = 1
    critical_threshold_duration    = 60
    critical_threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
    
  }
    condition4 = {
    type              ="static"  
    name              = "Condition 4"
    description       = "Alert when duration is high  on ping"
    querry             = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor' FACET location"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    critical_operator              = "above"
    critical_threshold             = 1
    critical_threshold_duration    = 60
    critical_threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  
  }
    
  
    condition5 = {
    type              ="static"  
    name              = "Condition 5"
    description       = "Alert when duration is high  on "
    querry             = "SELECT count(*) FROM SyntheticCheck WHERE monitorName = 'pagelink'AND result !='FAILED'"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 300
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    critical_operator              = "above"
    critical_threshold             = 1
    critical_threshold_duration    = 60
    critical_threshold_occurrences = "ALL"
    warning_operator              = "above"
    warning_threshold             = 1
    warning_threshold_duration    = 60
    warning_threshold_occurrences = "ALL"
  

    
  }
}


newrelic_service_level = {
  level1 = {
    name              = "level1"
    description       = "servicelevel1 on mylink"
    guid                ="NDQzODI1OXxBUE18QVBQTElDQVRJT058NDg4OTcwNjg4"
    from                 ="Transaction"
    where                =  "appName = 'mylink'"
    target               = 10
    count                = 28
    unit                 = "DAY"
  }

  level2= {
    name              = "level2"
    description       = "servicelevel on react1"
    guid               = "NDQzODI1OXxCUk9XU0VSfEFQUExJQ0FUSU9OfDUzODYxMTA1OQ"
    from               =  "PageView"
    where              =  "appName = 'react1'"
    target             = 30
    count              =  7
    unit                ="DAY"
  }
   level3= {
    name              = "level3"
    description       = "servicelevel on page monitor"
    guid               = "NDQzODI1OXxTWU5USHxNT05JVE9SfDRjMjEwYjQ4LWViY2YtNGI1ZS1hYThhLTAzZTRlOWFjZWI1Ng"
    from               =  "SynthetiCheck"
    where              = "monitorName = 'firstpingmonitor'"
    target             = 30
    count              =  7
    unit               = "DAY"
  }
    level4= {
    name              = "level4"
    description       = "servicelevel on pagelinkmonitor"
    guid               = "NDQzODI1OXxTWU5USHxNT05JVE9SfDdiZmJkMmE2LWEwOTMtNDg3OC1hNzY3LTlhNWJkYzYzZWIwNQ"
    from               =  "SynthetiCheck"
    where              =  "monitorName = 'pagelink'"
    target             =   20   
    count              =   1
    unit               = "DAY"
  }
     level5= {
    name              = "level5"
    description       = "servicelevel on  host monitor"
    guid               = "NDQzODI1OXxJTkZSQXxOQXw2MDI5NzM0MTI0NjQ0MTU2Mzc"
    from               =  "ProcessSample"
    where              =  "hostName = 'DESKTOP-Q5BUHLN'"
    target             =  10
    count              =  7
    unit               = "DAY"
  }
  

}
 
     

account_id = 4438259
api_key = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region = "EU"


  mypolicy_name ="firstpolicy"
