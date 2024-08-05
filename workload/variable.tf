variable "account_id" {
  type = number
  
}
variable "api_key" {
  type = string
  
}
variable "region" {
  type = string
  
}

variable "workload"{
    type= map(object({
        name= string
        entity_guids= string
        query=string
        
    }))
   
}