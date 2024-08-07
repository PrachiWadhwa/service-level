variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable  entity{
   type= map(object({
    guid= string
    key= string
    values=list(string)
    key2= string
    value2= list(string)

})) 
}