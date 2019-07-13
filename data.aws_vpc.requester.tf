data "aws_vpc" "requester" {
  provider = "aws.requester"

  filter {
    name   = "tag:aws:cloudformation:logical-id"
    values = ["VPC"]
  }
}