resource "newrelic_log_parsing_rule" "foo"{
  for_each = var.newrelic_log_parsing_rule
    name        = each.value.name
    attribute   = each.value.attribute
    enabled     = each.value.enabled
    grok        = each.value.grok
    lucene      = each.value.lucene
    nrql        = each.value.nrql
}