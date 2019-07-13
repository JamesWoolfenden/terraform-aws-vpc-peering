resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = "aws.accepter"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
  auto_accept               = true

  tags = merge(var.common_tags, 
         map("Side", "Accepter"), 
         map("Peered Account", 
         var.requester_account_alias))
}
