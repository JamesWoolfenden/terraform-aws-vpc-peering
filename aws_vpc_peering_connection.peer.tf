resource "aws_vpc_peering_connection" "peer" {
  provider      = "aws.requester"
  vpc_id        = data.aws_vpc.requester.id
  peer_vpc_id   = data.aws_vpc.accepter.id
  peer_owner_id = data.aws_caller_identity.peer.account_id
  auto_accept   = false

  tags = merge(var.common_tags,
    map("Side", "Requester"),
    map("Peered Account",
  var.accepter_account_alias))
}