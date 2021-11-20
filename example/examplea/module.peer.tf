module "peer" {
  source      = "../../"
  common_tags = var.common_tags
  providers = {
    aws.accepter  = aws.accepter
    aws.requester = aws.requester
  }
  accepter_filter_name  = "tag:Name"
  accepter_filter_value = "withipv6"

  requester_filter_name  = "tag:Name"
  requester_filter_value = "TEST"

  route_table_tag_acceptor  = "TEST-Public"
  route_table_tag_requestor = "TEST-Public"
}
