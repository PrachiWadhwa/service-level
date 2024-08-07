
resource "newrelic_nrql_drop_rule" "bar" {
  account_id  = var.account_id
  for_each = var.drop_rule
  description = each.value.description
  action      = each.value.action
  nrql        = each.value.nrql
}