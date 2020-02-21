resource "aws_vpc_peering_connection_options" "requester" {
  provider                  = "aws.requester"
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.peer.id

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
