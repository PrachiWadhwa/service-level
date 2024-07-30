variable "workflow" {
  type=map(object({
  name                  = string
  muting_rules_handling = string
  name_Issue= string
  type = string
  attribute = string
  operator  = string
  }))

}
variable "channel_id" {
  description = "The ID of the channel from the source module"
  type        = string
}
variable "policy_id" {
  description = "The ID of the policy_id from the source module"
  type        = string
}
variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}
variable "region" {
  type = string
}
  