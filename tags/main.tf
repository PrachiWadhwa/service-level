

resource "newrelic_entity_tags" "foo" {
  for_each = var.entity
  guid     = each.value.guid

  tag {
    key    = each.value.key
    values = each.value.values
  }

  tag {
    key    = each.value.key2
    values = each.value.value2
  }
}
