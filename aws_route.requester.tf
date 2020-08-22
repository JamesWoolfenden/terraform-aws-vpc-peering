resource "aws_route" "requester" {
  provider                  = aws.requester
  count                     = length(data.aws_route_tables.requester.ids)
  route_table_id            = data.aws_route_tables.requester.ids[count.index]
  destination_cidr_block    = data.aws_vpc.accepter.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.peer.id
}
