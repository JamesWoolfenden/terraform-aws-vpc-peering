module "peer" {
  source = "../../"
  provider = {
    aws.acceptor  = "aws.acceptor"
    aws.requester = "aws.requester"
  }
}

