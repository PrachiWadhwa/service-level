variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "broken" {
  type = map(object({
    name             = string
    uri              = string
    locations_public = string
    period           = string
    status           = string
  }))
}