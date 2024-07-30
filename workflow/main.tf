resource "newrelic_workflow" "sample_workflow" {
  for_each              =  var.workflow
  name                  = each.value.name
  muting_rules_handling = each.value.muting_rules_handling

  issues_filter {
    name = each.value.name_Issue
    type = each.value.type
    predicate {
      attribute = each.value.attribute
      operator  = each.value.operator
      values    = [ var.policy_id]
    }
  }

  destination {
    channel_id = var.channel_id
  }
}