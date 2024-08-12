resource "newrelic_synthetics_monitor" "simple_browser_monitor" {
  for_each = var.simple_browser_monitor
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = [each.value.locations_public]
}