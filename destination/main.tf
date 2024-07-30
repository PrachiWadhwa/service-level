resource "newrelic_notification_destination" "my_destination" {
  
  account_id =var.account_id
  for_each= var.destination
  name = each.value.name
  type =each.value.type

 

  property {
    key = each.value.key
    value = each.value.value
  }


}