resource "newrelic_synthetics_monitor" "monitor" {
  for_each = var.ping
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             =each.value.type
  locations_public = [each.value.locations_public]

}