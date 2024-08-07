variable "account_id" {
  type = number
}
variable "api_key" {
  type = string
}
variable "region" {
  type = string
}
variable "newrelic_log_parsing_rule" {
  type = map(object({
    name        = string
    attribute   = string
    enabled     = bool
    grok        = string
    lucene      = string
    nrql        = string
  }))
}
