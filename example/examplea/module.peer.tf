module "peer" {
  source      = "../../"
  common_tags = var.common_tags
  providers = {
    aws.accepter  = aws.src
    aws.requester = aws.req
  }
}
