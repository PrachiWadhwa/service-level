variable "alert_condition" {
    type=map(object({
        name= string
        description= string
        querry = string
       
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