resource "newrelic_workload" "foo" {
    for_each = var.workload
    name = each.value.name
    account_id = var.account_id

    entity_guids =[each.value.entity_guids]

dynamic "entity_search_query" {
    for_each = each.value.query != null ? [each.value] : []
    content {
      query = each.value.query
    }
        
    }
}

    