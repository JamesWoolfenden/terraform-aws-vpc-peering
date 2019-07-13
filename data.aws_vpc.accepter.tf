data "aws_vpc" "accepter" {
  provider = "aws.accepter"

  filter {
    name   = "tag:aws:cloudformation:logical-id"
    values = ["VPC"]
  }
}
