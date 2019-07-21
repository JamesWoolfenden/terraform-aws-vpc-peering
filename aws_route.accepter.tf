resource "aws_route" "accepter" {
  provider                  = aws.accepter
  count                     = length(data.aws_route_tables.accepter.ids)
  route_table_id            = data.aws_route_tables.accepter.ids[count.index]
  destination_cidr_block    = data.aws_vpc.requester.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.peer.id
}
