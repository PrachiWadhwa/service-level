module "alert_policy" {
  source = "./alert module"
  alert_condition =  var.alert_condition
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
  mypolicy_name=  var.mypolicy_name 
  
}
module "servicelevels" {
  source = "./sla-module"
  newrelic_service_level = var.newrelic_service_level 
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
  
}