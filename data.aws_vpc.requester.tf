data "aws_vpc" "requester" {
  provider = aws.requester

  filter {
    name   = var.requester_filter_name
    values = [var.requester_filter_value]
  }
}
