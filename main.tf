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
module "dash"{
  source ="./dash"
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
  dashboard_name = var.dashboard_name
  permissions=var.permissions
  page_name = var.page_name
  billboard = var.billboard
  markdown = var.markdown
  line = var.line
  table=var.table
  bar=var.bar
}
module "workload" {
   source ="./workload"
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
  workload = var.workload
  
}
module "tags"{
  source ="./tags"
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
  entity= var.entity

}
module "drop_rule"{
  source ="./drop_rule"
  account_id =  var.account_id
  api_key =  var.api_key
  region =  var.region
 drop_rule = var.drop_rule
}