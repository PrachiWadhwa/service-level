

newrelic_service_level = {
  level1 = {
    name              = "level1"
    description       = "servicelevel1 on mylink"
    guid              = "NDQzODI1OXxBUE18QVBQTElDQVRJT058NDg4OTcwNjg4"
    from_valid   = "PageView"
    where_valid = "appName = 'react1'" 
    from              = null
    where             = null
    target            = 10
    count             = 28
    unit              = "DAY"
    from_bad          = "Transaction"
    where_bad         = "appName = 'mylink'"
  }

  level2 = {
    name              = "level2"
    description       = "servicelevel on react1"
    guid              = "NDQzODI1OXxCUk9XU0VSfEFQUExJQ0FUSU9OfDUzODYxMTA1OQ"
    from_valid  = "PageView"
    where_valid = "appName = 'react1'"
    from              = "PageView"
    where             = "appName = 'react1'"
    target            = 30
    count             = 7
    unit              = "DAY"
    from_bad          = null
    where_bad         = null

  }
  level3 = {
    name              = "level3"
    description       = "servicelevel on page monitor"
    guid              = "NDQzODI1OXxTWU5USHxNT05JVE9SfDRjMjEwYjQ4LWViY2YtNGI1ZS1hYThhLTAzZTRlOWFjZWI1Ng"
    from_valid   = "PageView"
    where_valid = "appName = 'react1'"
    from              = "SynthetiCheck"
    where             = "monitorName = 'firstpingmonitor'"
    target            = 30
    count             = 7
    unit              = "DAY"
    from_bad          = null
    where_bad         = null

  }
  level4 = {
    name              = "level4"
    description       = "servicelevel on pagelinkmonitor"
    guid              = "NDQzODI1OXxTWU5USHxNT05JVE9SfDdiZmJkMmE2LWEwOTMtNDg3OC1hNzY3LTlhNWJkYzYzZWIwNQ"
    from_valid   = "PageView"
    where_valid = "appName = 'react1'"
    from              = "SynthetiCheck"
    where             = "monitorName = 'pagelink'"
    target            = 20
    count             = 1
    unit              = "DAY"
    from_bad          = null
    where_bad         = null
  }
  level5 = {
    name              = "level5"
    description       = "servicelevel on  host monitor"
    guid              = "NDQzODI1OXxJTkZSQXxOQXw2MDI5NzM0MTI0NjQ0MTU2Mzc"
    from_valid   = "PageView"
    where_valid = "appName = 'react1'" 
    from              = "ProcessSample"
    where             = "hostName = 'DESKTOP-Q5BUHLN'"
    target            = 10
    count             = 7
    unit              = "DAY"
    from_bad          = null
    where_bad         = null

  }


}



account_id = 4438259
api_key    = "NRAK-VRXRZURE3KIF089GIFYW7GSSJGV"
region     = "EU"