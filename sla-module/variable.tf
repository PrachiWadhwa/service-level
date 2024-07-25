variable "newrelic_service_level" {
    type=map(object({
        name= string
        description= string
        guid = string
        from= string
        where= string
        target=number
        count=number
        unit=string
        
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
