variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "drop_rule" {
  type = map(object({
    description = string
    action      = string
    nrql        = string
  }))
}
