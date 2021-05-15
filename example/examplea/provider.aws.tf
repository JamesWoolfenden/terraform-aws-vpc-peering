provider "aws" {
  alias  = "accepter"
  region = "eu-west-1"
}

provider "aws" {
  alias  = "requester"
  region = "eu-west-2"
}
