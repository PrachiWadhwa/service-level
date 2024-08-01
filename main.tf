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
module "destination"{

  source = "./destination"

  destination= var.destination
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region

}
module "channel"{

  source = "./channel"

 channel=  var.channel
  destination_id=module.destination.destination_id
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region

}
module "workflow" {

  source = "./workflow"
  workflow =  var.workflow
  channel_id =module.channel.channel_id
  policy_id = module.alert_policy.policy_id
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region


}
module "dashboard"{
  source ="./dashboard"
  dashboard= var.dashboard
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
}