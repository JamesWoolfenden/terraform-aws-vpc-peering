data "aws_route_tables" "accepter" {
  provider = aws.accepter
  vpc_id   = data.aws_vpc.accepter.id

  filter {
    name   = var.route_table_accepter_filter_name
    values = [var.route_table_tag_acceptor]
  }
}

variable "route_table_tag_acceptor" {
  default = "PrivateRouteTable*"
}

variable "route_table_accepter_filter_name" {
  default = "tag:Name"
}
