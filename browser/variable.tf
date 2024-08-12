variable "simple_browser_monitor" {
  type= map(object({
 status           = string
  name             = string
  period           = string
  uri              = string
  type             = string
  locations_public = string
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