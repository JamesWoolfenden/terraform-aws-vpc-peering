variable peer_owner_id {
  type = string
}

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
