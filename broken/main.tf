resource "newrelic_synthetics_broken_links_monitor" "bro1" {
  for_each         = var.broken
  name             = each.value.name
  uri              = each.value.uri
  locations_public = [each.value.locations_public]
  period           = each.value.period
  status           = each.value.status
}