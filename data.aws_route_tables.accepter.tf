data "aws_route_tables" "accepter" {
  provider = aws.accepter
  vpc_id   = data.aws_vpc.accepter.id

  filter {
    name   = var.accepter_filter_name
    values = ["PrivateRouteTable*"]
  }
}
