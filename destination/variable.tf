variable "destination" {
  type = map(object({
    name  = string
    type  = string
    key   = string
    value = string
  }))
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