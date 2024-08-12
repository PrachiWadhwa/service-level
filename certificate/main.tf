resource "newrelic_synthetics_cert_check_monitor" "certificte" {
  for_each               = var.cert
  name                   = each.value.name
  domain                 = each.value.domain
  locations_public       = [each.value.locations_public]
  certificate_expiration = each.value.certificate_expiration
  period                 = each.value.period
  status                 = each.value.status

}