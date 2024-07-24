resource "newrelic_alert_policy" "terraformmypolicy" {
  name = "myfirstpolicy"
}

resource "newrelic_nrql_alert_condition" "istcondition" {
  for_each                       = var.alert_condition
  account_id                     =  var.account_id
  policy_id                      = newrelic_alert_policy.terraformmypolicy.id
  type                           = "static"
  name                           = each.value.name
  description                    = each.value.description
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

  nrql {
    query = each.value.querry
  }

  critical {
    operator              = "above"
    threshold             = 2
    threshold_duration    = 60
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = "1"
    threshold_duration    = "60"
    threshold_occurrences = "ALL"
  }
}