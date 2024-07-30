variable "channel" {
  type = map(object({
    name           = string
    type           = string
    product          = string
    key_subject    = string
    key_subject_value =string
    key_detail        =string
    key_detail_value  =string
   
  }))

}
variable "destination_id" {
  description = "The ID of the destination from the source module"
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

