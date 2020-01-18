output "option_accepter" {
  value = aws_vpc_peering_connection_options.accepter
}

output "accepter_peer" {
  value = aws_vpc_peering_connection_accepter.peer
}

output "options_requester" {
  value = aws_vpc_peering_connection_options.requester
}

output "connection_peer" {
  value = aws_vpc_peering_connection.peer
}