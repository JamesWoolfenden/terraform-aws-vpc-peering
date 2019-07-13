data "aws_vpc" "accepter" {
  provider = "aws.accepter"

  filter {
    name   = var.accepter_filter_name
    values = [var.accepter_filter_value]
  }
}
