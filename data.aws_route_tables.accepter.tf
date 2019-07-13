data "aws_route_tables" "accepter" {
  provider = "aws.accepter"
  vpc_id   = data.aws_vpc.accepter.id

  filter {
    name   = "tag:aws:cloudformation:logical-id"
    values = ["PrivateRouteTable*"]
  }
}
