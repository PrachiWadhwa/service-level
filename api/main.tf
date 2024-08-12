resource "newrelic_synthetics_script_monitor" "scriptapimonitor" {
  for_each         =  var.api
  status           = each.value.status
  name             = each.value.name
  type             = each.value.type
  locations_public = each.value.locations_public
  period           = each.value.period
  script           = each.value.script
  script_language  = each.value.script_language

}