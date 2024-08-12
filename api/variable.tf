variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "api" {
  type = map(object({
    status           = string
    name             = string
    type             = string
    locations_public = list(string)
    period           = string
    script           = string
    script_language  = string
  }))

}