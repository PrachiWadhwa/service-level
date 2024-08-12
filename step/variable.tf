variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "stepm" {
  type = map(object({
    name                                    = string
    enable_screenshot_on_failure_and_script = bool
    locations_public                        = list(string)
    period                                  = string
    status                                  = string
    ordinal = number
    type    = string
    values  = string

  }))

}