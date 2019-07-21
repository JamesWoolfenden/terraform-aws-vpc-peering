

variable "common_tags" {
  type = map
}

variable "requester_account_alias" {
  type    = string
  default = ""
}

variable "accepter_account_alias" {
  type    = string
  default = ""
}

variable "accepter_filter_name" {
  type    = string
  default = "tag:aws:cloudformation:logical-id"
}

variable "accepter_filter_value" {
  type    = string
  default = "VPC"
}

variable "requester_filter_name" {
  type    = string
  default = "tag:aws:cloudformation:logical-id"
}

variable "requester_filter_value" {
  type    = string
  default = "VPC"
}
