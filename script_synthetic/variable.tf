variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}

variable "script" {
  type = map(object({
    status                                  = string
    name                                    = string
    type                                    = string
    locations_public                        = list(string)
    period                                  = string
    enable_screenshot_on_failure_and_script = bool
    script                                  = string
    script_language                         = string


  }))

}



