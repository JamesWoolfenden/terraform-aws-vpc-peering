

variable "common_tags" {
  description = "Implements the common tags scheme"
  type        = map
}

variable "requester_account_alias" {
  description = ""
  type        = string
  default     = ""
}

variable "accepter_account_alias" {
  description = ""
  type        = string
  default     = ""
}

variable "accepter_filter_name" {
  description = ""
  type        = string
  default     = "tag:aws:cloudformation:logical-id"
}

variable "accepter_filter_value" {
  description = ""
  type        = string
  default     = "VPC"
}

variable "requester_filter_name" {
  description = ""
  type        = string
  default     = "tag:aws:cloudformation:logical-id"
}

variable "requester_filter_value" {
  description = ""
  type        = string
  default     = "VPC"
}
