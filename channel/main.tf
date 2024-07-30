resource "newrelic_notification_channel" "my_channel" {
  destination_id =  var.destination_id
  account_id = var.account_id
  for_each =  var.channel
  name = each.value.name
  type = each.value.type
  
  product = each.value.product     // i dont know what is this

  property {
    key = each.value.key_subject
    value = each.value.key_subject_value
  }

  property {
    key =  each.value.key_detail
    value = each.value.key_detail_value
}
}