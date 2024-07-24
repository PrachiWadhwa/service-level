alert_condition = {
  condition1 = {
    name              = "Condition 1"
    description       = "Alert when transactions are taking too long"
    querry             = "SELECT average(duration) FROM Transaction where appName = 'mylink'"
    
  }
  condition2 = {
    name              = "Condition 2"
    description       = "Alert when httpsttatus code is high"
    querry             = "SELECT count(http.statusCode)FROM Transaction WHERE appName='mylink'"
    
  }
  condition3 = {
    name              = "Condition 3"
    description       = "Alert when total time is high "
    querry             = "SELECT  sum(totalTime) FROM Transaction WHERE appName='mylink'"
    
  }
    condition4 = {
    name              = "Condition 4"
    description       = "Alert when duration is high  on ping"
    querry             = "SELECT average(duration) FROM SyntheticCheck WHERE monitorName = 'firstpingmonitor' FACET location"

    
  }
    condition5 = {
    name              = "Condition 5"
    description       = "Alert when duration is high  on "
    querry             = "SELECT count(*) FROM SyntheticCheck WHERE monitorName = 'pagelink'AND result !='FAILED'"




    
  }
}
newrelic_service_level = {
  level1 = {
    name              = "level1"
    description       = "servicelevel1 on mylink"
    guid                ="NDQzODI1OXxBUE18QVBQTElDQVRJT058NDg4OTcwNjg4"
    from                 ="Transaction"
    where                =  "appName = 'mylink'"
  }

  level2= {
    name              = "level2"
    description       = "servicelevel on react1"
    guid               = "NDQzODI1OXxCUk9XU0VSfEFQUExJQ0FUSU9OfDUzODYxMTA1OQ"
    from               =  "PageView"
    where              =  "appName = 'react1'"
  }
   level3= {
    name              = "level3"
    description       = "servicelevel on page monitor"
    guid               = "NDQzODI1OXxTWU5USHxNT05JVE9SfDRjMjEwYjQ4LWViY2YtNGI1ZS1hYThhLTAzZTRlOWFjZWI1Ng"
    from               =  "SynthetiCheck"
    where              =  "monitorName = 'firstpingmonitor'"
  }
    level4= {
    name              = "level4"
    description       = "servicelevel on pagelinkmonitor"
    guid               = "NDQzODI1OXxTWU5USHxNT05JVE9SfDdiZmJkMmE2LWEwOTMtNDg3OC1hNzY3LTlhNWJkYzYzZWIwNQ"
    from               =  "SynthetiCheck"
    where              =  "monitorName = 'pagelink'"
  }
     level5= {
    name              = "level5"
    description       = "servicelevel on  host monitor"
    guid               = "NDQzODI1OXxJTkZSQXxOQXw2MDI5NzM0MTI0NjQ0MTU2Mzc"
    from               =  "ProcessSample"
    where              =  "hostName = 'DESKTOP-Q5BUHLN'"
  }
  

}
account_id = 4438259
api_key = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region = "EU"
  

