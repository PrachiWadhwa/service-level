variable "cert" {
  type = map(object({
    name                   = string
    domain                 = string
    locations_public       = string
    certificate_expiration = string
    period                 = string
    status                 = string
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