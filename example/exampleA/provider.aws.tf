provider "aws" {
  alias   = "acceptor"
  region  = "eu-west-1"
  version = "2.16.0"
}

provider "aws" {
  alias   = "requester"
  region  = "eu-west-2"
  version = "2.16.0"
}

