data "aws_route_tables" "requester" {
  provider = "aws.requester"
  vpc_id   = data.aws_vpc.requester.id

  filter {
    name   = "tag:aws:cloudformation:logical-id"
    values = ["PrivateRouteTable*"]
  }
}

