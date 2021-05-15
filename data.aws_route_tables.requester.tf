data "aws_route_tables" "requester" {
  provider = aws.requester
  vpc_id   = data.aws_vpc.requester.id

  filter {
    name   = var.route_table_requester_filter_name
    values = [var.route_table_tag_requestor]
  }
}

variable "route_table_tag_requestor" {
  default = "PrivateRouteTable*"
}

variable "route_table_requester_filter_name" {
  default = "tag:Name"
}